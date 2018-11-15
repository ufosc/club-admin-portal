<template>
  <div id="app">
    <h1>Open Source Club admin portal</h1>
    <div v-if="authenticated" id="nav">
      <router-link v-if="authenticated" to="/login" v-on:click.native="logout()" replace>Logout</router-link>
      <router-view @authenticated="setAuthenticated" />
    </div>
    <login @authenticated="setAuthenticated"></login>
  </div>
</template>

<script>
import login from "@/components/login.vue"; 
  export default {
    name: 'App',
    data () {
      return {
        authenticated : false,
      }
    },
    components: {
		  login,
    },
    
    methods: {
      setAuthenticated(isAuth) {
        console.log("Authentication is: " + isAuth);
        this.authenticated = isAuth;
      },

      logout() {
        console.log("Log me out");
        this.authenticated = false;
        console.log("auth", this.authenticated);
      }
    }
  }
</script>

<style lang="scss">
  #app {
    width: 1024px;
    margin: auto;
  }
  body {
    background-color: #F0F0F0;
  }
  h1 {
    padding: 0;
    margin-top: 0;
  }
</style>
