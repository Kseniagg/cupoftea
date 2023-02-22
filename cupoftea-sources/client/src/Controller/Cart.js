const Cart = () => {
	return (
		<>
			<h1>Votre panier</h1>

			<article className="panier">
				<img src="" alt="" />
				<h3></h3>
				<p></p>
				<p>€</p>
				<p>
					<button data-id="" onClick="">
						<i className="fa fa-trash"></i>
					</button>
				</p>
			</article>

			<p>
				<button className="btn" onClick="">
					Valider la commande
				</button>
			</p>

			<p>Votre panier est vide</p>
		</>
	);
};

export default Cart;
