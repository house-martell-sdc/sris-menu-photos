const faker = require('faker');
const fs = require('fs');

let startTime = Date.now();


let getRandomNumber = function (min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
};

let getRandomFromArray = function (arr) {
  return arr[Math.floor(Math.random() * arr.length)];
};

const getRandomFromArrayByIndex = function (arr, index) {
  return arr[index];
};

const getNullOrNot = function(num) {
  if (num === 1) {
    return null;
  } else {
    return faker.fake("{{commerce.product}}");
  }
};


const bld = ['breakfast', 'lunch', 'dinner'];

const type = ['appetizer', 'main', 'dessert'];

const writeStream = fs.createWriteStream('data.csv');

writeStream.write('id,rest_id,rest_name,menu_type_num,menu_type_name,menu_section_num,menu_section_name,menu_section_description,menu_item_name,menu_item_description,menu_item_price\n', 'utf8');

function writeOneMillionTimes(writer, encoding, callback) {
  let i = 10000000;
  write();
  function write() {
    let ok = true;
    do {
      i -= 1;
      let randomNum = getRandomNumber(0, 1000000);
      let randomNullOne = getRandomNumber(1, 2);
      let randomNullTwo = getRandomNumber(1, 2);
      let data = `${i},${randomNum},Zebistro${randomNum},${getRandomNumber(0, 2)},${getRandomFromArray(bld)},${getRandomNumber(0, 2)},${getRandomFromArray(type)},${getNullOrNot(randomNullOne)},${faker.fake("{{commerce.product}}")},${getNullOrNot(randomNullTwo)},${faker.fake("{{commerce.price}}")}\n`
      if (i === 0) {
        writer.write(data, encoding, callback);
      } else {
        // see if we should continue, or wait
        // don't pass the callback, because we're not done yet.
        ok = writer.write(data, encoding);
      }
    } while (i > 0 && ok);
    if (i > 0) {
    // had to stop early!
    // write some more once it drains
      writer.once('drain', write);
    }
  }
}

writeOneMillionTimes(writeStream, 'utf-8', () => {
  writeStream.end();
  const finalTime = Date.now() - startTime;
  console.log(`this operation took ${finalTime / 1000} seconds`);
});

// id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
//   rest_id int NOT NULL,
//   rest_name varchar(50) NOT NULL,
//   menu_type_num int NOT NULL,
//   menu_type_name varchar(50) NOT NULL,
//   menu_section_num int NOT NULL,
//   menu_section_name varchar(50) NOT NULL,
//   menu_section_description text NULL,
//   menu_item_name varchar(50) NOT NULL,
//   menu_item_description text NULL,
//   menu_item_price varchar(50)
