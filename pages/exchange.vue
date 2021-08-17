<template>
    <div>
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1.2/dist/tailwind.min.css" rel="stylesheet">
    </div>
</template>

<script>
import { DIGITAL_CURRENCIES  } from "../constants";
export default {
    data() {
      return {
        DIGITAL_CURRENCIES
      }
    },
    async fetch() {
      await fetch(
        // TODO:  Set api key and correct currencies
        `https://www.alphavantage.co/query?function=CURRENCY_EXCHANGE_RATE&from_currency=BTC&to_currency=CNY&apikey=demo`
      ).then(res => res.json())
    }
    
}
</script>
