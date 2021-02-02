const CustomError = require('./CustomError');

module.exports = (err, req, res, next) => {
if(err instanceof CustomError){
  res.status(err.statusCode).json({
    status:'error',
    message: err.message
  })}
  else{
    res.status(500).json({
      status:'error',
      message: 'Internal error'
    })
  
}
}