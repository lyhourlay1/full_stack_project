import { connect } from "react-redux"
import Cart from './cart'
import { fetchCart } from "../../actions/cart_action"
import { fetchOrders , deleteOrder} from "../../actions/order_action"

const mSTP = (state, ownProps)=>{
    
    return {
        // cart: state.entities.cart,
        currentUser: state.session.currentUser,
        orders: Object.values(state.entities.orders)
    }
}

const mDTP = dispatch =>({
    // fetchCart: userId => dispatch(fetchCart(userId))
    fetchOrders: ()=> dispatch(fetchOrders()),
    deleteOrder: orderId=> dispatch(deleteOrder(orderId))
})

export default connect(mSTP, mDTP)(Cart)