const Dashboard = () => {
	return (
		<>
			<h1 className="account-title">Mon compte</h1>

			<h2 className="infos-title">Mes informations</h2>

			<h2 className="orders-title">Mes commandes</h2>
			<div class="flex">
				<table className="commande">
					<thead>
						<tr>
							<th>Numéro de commande</th>
							<th>Date de la commande</th>
							<th>Montant de la commande</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
							<td></td>
							<td> €</td>
							<td>
								<button data-id="">
									<i class="fa fa-eye"></i>
								</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</>
	);
};

export default Dashboard;
