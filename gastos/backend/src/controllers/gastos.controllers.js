const Gasto = require('../models/gastos');

const gastosControllers = {};

// GET TODOS LOS GASTOS
gastosControllers.getGastos = async(req,res)=>{

    const gastos = await Gasto.find();

    const gastosFormateados = gastos.map(g => ({
        id: g._id,
        codigo: g.codigo,
        tipo: g.tipo,
        monto: g.monto,
        descripcion: g.descripcion,
        fechaCreacion: new Date(g.fechaCreacion).toLocaleDateString('es-EC',{
            day:'2-digit',
            month:'2-digit',
            year:'numeric'
        })
    }));

    res.json(gastosFormateados);
};

// POST GUARDAR GASTO
gastosControllers.addGasto = async(req,res)=>{

    const gasto = new Gasto({
        codigo:req.body.codigo,
        tipo:req.body.tipo,
        monto:req.body.monto,
        descripcion:req.body.descripcion
    });

    await gasto.save();

    res.json('Gasto guardado');
};

// GET GASTO POR ID
gastosControllers.getGasto = async(req,res)=>{

    const gasto = await Gasto.findById(req.params.id);

    const gastoFormateado = {
        id: gasto._id,
        codigo: gasto.codigo,
        tipo: gasto.tipo,
        monto: gasto.monto,
        descripcion: gasto.descripcion,
        fechaCreacion: new Date(gasto.fechaCreacion).toLocaleDateString('es-EC',{
            day:'2-digit',
            month:'2-digit',
            year:'numeric'
        })
    };

    res.json(gastoFormateado);
};

// GET GASTOS POR TIPO
gastosControllers.getGastosTipo = async(req,res)=>{

    const gastos = await Gasto.find({
        tipo:req.params.tipo
    });

    const gastosFormateados = gastos.map(g => ({
        id: g._id,
        codigo: g.codigo,
        tipo: g.tipo,
        monto: g.monto,
        descripcion: g.descripcion,
        fechaCreacion: new Date(g.fechaCreacion).toLocaleDateString('es-EC',{
            day:'2-digit',
            month:'2-digit',
            year:'numeric'
        })
    }));

    res.json(gastosFormateados);
};

// PUT ACTUALIZAR GASTO
gastosControllers.editGasto = async(req,res)=>{

    const { id } = req.params;

    const gasto = {
        codigo:req.body.codigo,
        tipo:req.body.tipo,
        monto:req.body.monto,
        descripcion:req.body.descripcion
    };

    await Gasto.findByIdAndUpdate(id, {$set:gasto}, {new:true});

    res.json('Gasto actualizado');
};

// DELETE ELIMINAR GASTO
gastosControllers.deleteGasto = async(req,res)=>{

    await Gasto.findByIdAndDelete(req.params.id);

    res.json('Gasto eliminado');
};

module.exports = gastosControllers;