<template>
  <div id="app">
    <div v-if="authenticated" id="nav">
      <router-link v-if="authenticated" to="/login" v-on:click.native="logout()" replace>Logout</router-link> |
    </div>
    <router-view @authenticated="setAuthenticated" />
  </div>
</template>

<script>
  export default {
    name: 'App',
    data() {
      return {
          //Initialize 'mock data'
          authenticated: false,
          mockAccount: {
            username: 'osc',
            password: 'password'
          }
      }
    },
    mounted() {
      if(!this.authenticated) {
        this.$router.replace({name: "login"});
      }
    },
    methods: {
      setAuthenticated(status) {
        this.authenticated = status;
      },
      logout() {
        this.authenticated = false;
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
