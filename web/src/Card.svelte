<script lang="ts">
</script>

<div class="card">
    <div class="info-container">
        <img
            class="card-image"
            src="images/buyers_edge.png"
            alt="Buyers Edge"
        />
    </div>
</div>

<style lang="scss">
    $brand-lightest: #ffcdb2;
    $brand-lighter: #ffb4a2;
    $brand-main: #e5989b;
    $brand-dark: #b5838d;
    $brand-darkest: #6d6875;

    .card {
        grid-area: card;
        display: flex;

        .info-container {
            .card-image {
                object-fit: contain;
                height: 75px;
            }
        }
    }
</style>
