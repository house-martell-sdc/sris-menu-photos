

const getAllMenuItems = function (rest_id, callback) {
    pool.connect()  
    .then(client => {
        return client.query(`SELECT * from menus WHERE rest_id = ${rest_id}`)
          .then(res => {
            client.release()
           callback(res)
      })
      .catch(err => {
        client.release()
        callback(err)
      })
    })
  
  };
    //     pool.query(`SELECT * from menus WHERE rest_id = ${rest_id}`, (err, data) => {
  //       if (err) {
  //         console.error(err)
  
  //       } else {
  //         callback(data);
  //       }
  //     })
  // };
  
  const getAllPhotos = function (rest_id, callback) {
    const sql_query = 'SELECT * from `photos` WHERE `rest_id` = ?';
    connection.query(sql_query, rest_id, (err, data) => {
      if (err) { console.error(err) ;}
      else {
        callback(data);
      }
    });
  };
  
  const addMenuItem = function(id, rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num,
      menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price, callback) {
        const text = 'INSERT INTO menus VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11);';
        const values = [`${id}`, `${rest_id}`, `${rest_name}`, `${menu_type_num}`, `${menu_type_name}`, `${menu_section_num}`, `${menu_section_name}`, `${menu_section_description}`, `${menu_item_name}`, `${menu_item_description}`, `${menu_item_price}`]
    pool.query(text, values, (err, res) => {
      if (err) {
        console.error(err)
        res.status(400).send(err);
      } else {
        callback()
      }
    })
  };
  
  const deleteMenuItem = function (rest_id, menu_item_name, callback) {
      const text = 'Delete from menus where rest_id = ($1) and menu_item_name = ($2);';
      const values = [rest_id, menu_item_name];
      pool.query(text, values, (err, res) => {
        if (err) {
          console.error(err)
          res.status(404).send(err)
        } else {
          callback()
        }
      })
  };
  
  module.exports = { getAllMenuItems, getAllPhotos, addMenuItem, deleteMenuItem };
  