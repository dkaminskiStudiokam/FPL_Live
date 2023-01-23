<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <meta charset="utf-8">
	<title>Witaj na FPL_Live</title>
	<style type="text/css">
        th, td {
            border: 1px solid black;
        }
	</style>
</head>
<body>

<div id="container">
    <script>
        var app = new Vue({
            el: '#app',
            data: {},
            computed: {
            },
            methods: {},
            mounted() {
            }

        });
        
        const { createApp } = Vue

        createApp({
            data() {
                return {
                    message: 'Hello Vue!'
                }
            }
        }).mount('#app')
    </script>
</div>

</body>
</html>