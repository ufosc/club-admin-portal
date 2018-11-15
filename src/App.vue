<template>
  <div id="app">
    <router-view @authenticated="setAuthenticated" />
    <router-link v-if="authenticated" to="/secure" v-on:click.native="logout()" replace>Logout</router-link>
  </div>
</template>

<script>
  export default {
    name: 'App',
    data () {
      return {
       authenticated: false,
      }
    },
    components: {

    },
    
    methods: {
      setAuthenticated(isAuth) {
          console.log("Authentication is: " + isAuth);
          this.authenticated = isAuth;
        },
      logout() {
        console.log("Log me out");
        this.authenticated = false;
        this.$router.replace({ name: "home" });
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
