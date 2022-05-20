<script lang="ts">
</script>

<div class="card">
    <div class="info-container">
        <div class="product-icon">
        <i class="fa-brands fa-java"></i>
        </div>
        <div class="info-desc-container">
            <div class="info-heading-container">
                <p class="info-heading">Java</p>
                <p class="info-sub-description">(Professional Experience)</p>
            </div>
        </div>
    </div>
    <div class="info-container">
        <div class="product-icon">
            <i class="fa-brands fa-js-square"></i>     
        </div>
        <div class="info-desc-container">
            <div class="info-heading-container">
                <p class="info-heading">Typescript</p>
                <p class="info-sub-description">(Professional Experience)</p>
            </div>
        </div>
    </div>
    <div class="info-container">
        <div class="product-icon">
            <i class="fa-brands fa-python"></i>
        </div>
        <div class="info-desc-container">
            <div class="info-heading-container">
                <p class="info-heading">Python</p>
                <p class="info-sub-description">(Professional Experience)</p>
            </div>
        </div>
    </div>
    <div class="info-container">
        <div class="product-icon">
            <i class="fa-solid fa-database"></i>    
        </div>
        <div class="info-desc-container">
            <div class="info-heading-container">
                <p class="info-heading">MySQL</p>
                <p class="info-sub-description">(Professional Experience)</p>
            </div>
        </div>
    </div>
    <div class="info-container">
        <div class="product-icon">
            <i class="fa-brands fa-angular"></i>
        </div>
        <div class="info-desc-container">
            <div class="info-heading-container">
                <p class="info-heading">Angular</p>
                <p class="info-sub-description">(Professional Experience)</p>
            </div>
        </div>
    </div>
    <div class="info-container">
        <div class="product-icon">
            <i class="fa-brands fa-react"></i>
        </div>
        <div class="info-desc-container">
            <div class="info-heading-container">
                <p class="info-heading">React</p>
                <p class="info-sub-description">(Professional Experience)</p>
            </div>
        </div>
    </div>
    <div class="info-container">
        <div class="product-icon">
            <i class="fa-brands fa-vuejs"></i>
        </div>
        <div class="info-desc-container">
            <div class="info-heading-container">
                <p class="info-heading">Vue.js</p>
                <p class="info-sub-description">(Personal Experience)</p>
            </div>
        </div>
    </div>
    <div class="info-container">
        <div class="product-icon">
            <i class="fa-brands fa-sass"></i>
        </div>
        <div class="info-desc-container">
            <div class="info-heading-container">
                <p class="info-heading">SASS</p>
                <p class="info-sub-description">(Professional Experience)</p>
            </div>
        </div>
    </div>
    <div class="info-container">
        <div class="product-icon">
            <i class="fa-brands fa-angular"></i>
        </div>
        <div class="info-desc-container">
            <div class="info-heading-container">
                <p class="info-heading">Angular</p>
                <p class="info-sub-description">(Professional Experience)</p>
            </div>
        </div>
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
        flex-direction: column;
        flex-grow: 0;

        .info-container {
            display: flex;
            justify-content: space-evenly;
            font-weight: 300;
            border-bottom: 1px solid $brand-main;
            border-radius: 10px;
            padding: 5px;
            margin-bottom: 1em;

            .product-icon {
                font-size: 2em;
            }

            .info-desc-container {
                display: flex;
                color: $brand-darkest;
                flex-direction: column;
                margin-left: 1em;

                .info-heading-container {
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                    margin-bottom: 0;

                    .info-heading {
                        margin-right: 0.5em;
                        font-weight: bold;
                        font-size: 0.9em;
                    }
                }

                .info-description {
                    margin-bottom: 0;
                    max-width: 20ch;
                    overflow-wrap: break-word;
                }

                .info-sub-description {
                    font-size: 0.7em;
                    font-weight: 300;
                    max-width: 30ch;
                    overflow-wrap: break-word;
                }
            }
        }
    }
</style>
