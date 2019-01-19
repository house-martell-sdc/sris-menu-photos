'use strict';


function generateRandomData(requestParams, context, ee, next) {
  // generate data with Faker:
  const min = Math.ceil(1);
  const max = Math.floor(1000000);

  const newId = Math.floor(Math.random() * (max - min + 1)) + min;

  context.vars['id'] = newId;
 
  
  // continue with executing the scenario:
  return next();
}

module.exports = {
  generateRandomData,
};
