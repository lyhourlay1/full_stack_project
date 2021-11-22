import { connect } from "react-redux";
import React from 'react'
import NavBar from './nav_bar'
import {logout} from '../../actions/session_action'

const mSTP = state => ({
    currentUser: state.session.currentUser
})

const mDTP = dispatch=> ({
    logout: ()=> dispatch(logout())
})


export default connect(mSTP, mDTP)(NavBar)