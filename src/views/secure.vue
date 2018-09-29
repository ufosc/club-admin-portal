<template>
    <div id="secure">
        <h1>Welcome! </h1>
        <p> 
            This is a secure area, you logged in!
        </p>
    </div>
</template>

<script>
    export default {
        name: "Secure",
        data() {
            return {};
        },
    };
</script>

<style scoped>
    #secure {
        background-color: rgb(243, 180, 245);
        border: 1px solid #CCCCCC;
        padding: 20px;
        margin-top: 10px;
    }
</style>