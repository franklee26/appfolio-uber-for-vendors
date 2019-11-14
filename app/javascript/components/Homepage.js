import React from "react";

const Homepage = props => {
  return (
    <div>
      <h1 align="center">Welcome to Uber for Vendors</h1>

      <h2>Current registered Tenants:</h2>
      {props.tenants.length ? (
        props.tenants.map(tenant => (
          <li
            key={tenant.id}
          >{`ID: ${tenant.id} Name: ${tenant.name} Email: ${tenant.email}`}</li>
        ))
      ) : (
        <p1> No tenants in database </p1>
      )}

      <h2>Current registered Landowners:</h2>
      {props.landowners.length ? (
        props.landowners.map(landowner => (
          <li
            key={landowner.id}
          >{`ID: ${landowner.id} Name: ${landowner.name} Email: ${landowner.email}`}</li>
        ))
      ) : (
        <p1> No landowners in database </p1>
      )}

      <h2>Current registered Vendors:</h2>
      <p1> No vendors in database </p1>
    </div>
  );
};

export default Homepage;
