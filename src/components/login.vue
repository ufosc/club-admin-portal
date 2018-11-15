<template>
	<div id="login-form">
		<h1>Login:</h1>
		<p>Username: </p>
		<form>
			<input type="text" v-model="input.username" placeholder="Username" required><br>
			<p>Password: </p>
			<input type="password" v-model="input.password" placeholder="Password" required><br><br>
		<button type="button" v-on:click="login()">Login</button>
		</form>
	</div>
</template>
<script lang="ts">

	import { Component, Vue } from "vue-property-decorator";

	export default{
		name: 'login',
		components: {
			
		},
		data() {
			return {
				//Initialize 'mock data'
				authenticated: false,
				input: {
					username: "",
					password: "",
				},
				mockAccount: {
					username: 'osc',
					password: 'password',
				}
			}
		},
		methods: {
			login() {
				console.log(this.input);
				if(this.input.username != "" && this.input.password != "") {
					if(this.input.username == this.mockAccount.username && this.input.password == this.mockAccount.password) {
						this.$emit("authenticated", true);
						console.log("Fake login success!")
						this.$router.replace({ name: "secure" });
					} else {
						console.log("The username and / or password is incorrect");
					}
				} else {
					console.log("A username and password must be present");
				}
			}
    },
		
	}
</script>

<style scoped>
	#login-form {
		background-color: rgb(171, 174, 226);
		width: 500px;
		border: 1px solid #CCCCCC;
		margin: auto;
		margin-top: 200px;
		padding: 20px;
	}
	h3 {
  		margin: 40px 0 0;
	}
	ul {
		list-style-type: none;
		padding: 0;
	}
	li {
		display: inline-block;
		margin: 0 10px;
	}
	a {
		color: #42b983;
	}
</style>