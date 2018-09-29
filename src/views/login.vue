<template>
    <div id="login">
        <h1>Login:</h1>
            <p>Username: </p>
            <input type="text" v-model="input.username" placeholder="Username" required><br>
            <p>Password: </p>
            <input type="password" v-model="input.password" placeholder="Password" required><br><br>
            <button type="button" v-on:click="login()">Login</button>
    </div>
</template>
<script>
    export default {
        name: "Login",
        data() {
            return {
                input: {
                    username: "",
                    password: ""
                },
            };
        },
        methods: {
            login() {
                console.log(`Logged into accout: ${this.input.username}`);
                if(this.input.username != "" && this.input.password != "") {
                    if(this.input.username == this.$parent.mockAccount.username && this.input.password != this.$parent.mockAccount.password) {
                        this.$emit("authenticated", true);
                        this.$router.replace({name: "secure"});
                    }
                }
            },
        },
    };
</script>

<style scoped>
    #login {
        background-color: rgb(171, 174, 226);
        width: 500px;
        border: 1px solid #CCCCCC;
        margin: auto;
        margin-top: 200px;
        padding: 20px;
    }
</style>