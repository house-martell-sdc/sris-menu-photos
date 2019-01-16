import React from 'react';
import Menu from './Menu.jsx'
import axios from 'axios';
import MenuSection from './MenuSection.jsx'
import styles from '../../dist/styles.css'
class MenuApp extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      menu_data: ['hello'],
      menu_types: {},
      rest_id: Math.floor(Math.random() * Math.foor(1000000)),
      menu_state: 0,
      filtered_menu_data: ["filtered"],
      viewmore: true,
      breakfast: true,
      lunch: false,
      dinner: false
    };
    this.click = this.click.bind(this)
  }

  componentWillMount() {
    this.filterDatabyMenuType()
    this.getMenus(this.state.rest_id)
    this.findUniqueMenuTypes()
    
  }

  // http://54.219.151.33:9003/

  findUniqueMenuTypes() {
    axios
      // .get(`http://127.0.0.1:9003/api/menus/${this.state.rest_id}`)
      // .get(`/api/menus/${this.state.rest_id}`)
      .get(`http://54.219.151.33:9003/api/menus/${this.state.rest_id}`)                    
      .then(({ data }) => this.retrieveUniqueMenuTypes(data))
      .then((data) => this.setState({menu_types: data}));
  }

  filterDatabyMenuType() {
    axios
    // .get(`http://127.0.0.1:9003/api/menus/${this.state.rest_id}`)  
    // .get(`/api/menus/${this.state.rest_id}`)
    .get(`http://54.219.151.33:9003/api/menus/${this.state.rest_id}`)        
        
    .then(({ data }) => data.filter(obj => obj.menu_type_num === this.state.menu_state))
    .then((data)=> this.setState({filtered_menu_data: data}))
  }


  getMenus(rest_id) {
    axios
      // .get(`http://127.0.0.1:9003/api/menus/${rest_id}`)
      // .get(`/api/menus/${rest_id}`)
      .get(`http://54.219.151.33:9003/api/menus/${rest_id}`)          
      .then(({ data }) => this.setState({menu_data: data}));
  }; 



  retrieveUniqueMenuTypes(menu_data) {
    let unique_menus_set = new Set();
    let unique_menus_dict = {};
    for (let i = 0; i < menu_data.length; i++) {
	    if (!unique_menus_set.has(menu_data[i]["menu_type_num"])) {
		    unique_menus_set.add(menu_data[i]["menu_type_num"])
		    unique_menus_dict[menu_data[i]["menu_type_num"]] = menu_data[i]["menu_type_name"]
      }
    }
   return [unique_menus_dict]
  }
  breakfastHandler(e) {
    this.setState({menu_state: 0})
    this.setState({breakfast: true});
    this.setState({lunch: false})
    this.setState({dinner: false})
    this.filterDatabyMenuType()
  }
  lunchHandler(e) {
    this.setState({menu_state: 1})
    this.setState({breakfast: false});
    this.setState({lunch: true})
    this.setState({dinner: false})
    this.filterDatabyMenuType()
  }
  dinnerHandler(e) {
    this.setState({menu_state: 2})
    this.setState({breakfast: false});
    this.setState({lunch: false})
    this.setState({dinner: true})
    this.filterDatabyMenuType()
  }

  click() {
    this.setState({ details: false, viewmore: false });
  }

  render() {
    let viewId = this.state.viewmore ? "viewmore" : "viewmore1";
    let breakfastStyle = this.state.breakfast ? "breakfastbutton" : "breakfastbutton1";
    let lunchStyle = this.state.lunch ? "lunchbutton" : "lunchbutton1";
    let dinnerStyle = this.state.dinner ? "dinnerbutton" : "dinnerbutton1";

    return (
      <div >
        <div id="restaurantmenu" className={styles.menucontainer}>
          <div className={styles.sectionHeader}>
          <br></br>
                  Menu
          </div>
          <div className = {styles.menusectiontitle}> 
          <button className={styles[breakfastStyle]} onClick={e => this.breakfastHandler(e)}>Breakfast</button>
          <button className={styles[lunchStyle]} onClick={e => this.lunchHandler(e)}>Lunch</button>
          <button className={styles[dinnerStyle]} onClick={e => this.dinnerHandler(e)}>Dinner</button>
          </div>

          
          <MenuSection data = {this.state.filtered_menu_data.filter(obj => obj.menu_section_num === 0)} />
          <MenuSection data = {this.state.filtered_menu_data.filter(obj => obj.menu_section_num === 1)} />
          <MenuSection data = {this.state.filtered_menu_data.filter(obj => obj.menu_section_num === 2)} />
          
            <div className={styles[viewId]}>
              <div className={styles.viewtext} onClick={()=>this.click()}>View Full Menu</div>
            </div>
        </div>
        {/* <div className={styles[viewId]}>
            <div className={styles.viewtext} onClick={()=>this.click()}>View all details</div>
        </div> */}
      </div>
    );
  }
}

export default MenuApp;
