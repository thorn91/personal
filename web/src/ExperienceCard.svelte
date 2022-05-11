<script lang="ts">
</script>

<div class="card">
    <div class="info-container">
        <div class="image-container">
            <img
                class="card-image"
                src="images/buyers_edge.png"
                alt="Buyers Edge"
                title="Buyers Edge Platform"
            />
        </div>
        <div class="info-desc-container">
            <div class="info-heading-container">
                <p class="info-heading">Software Developer</p>
                <p class="info-date">2021-2022</p>
            </div>
            <p class="info-description">
                Fullstack web development on the Orderly food cost solutions
                product.
            </p>
            <p class="info-sub-description">
                SpringBoot, React, Angular, MySql, Docker, SCSS
            </p>
        </div>
    </div>
    <div class="info-container">
        <div class="image-container">
            <img
                class="card-image"
                src="images/techport13_logo.png"
                alt="Techport13"
                title="Techport13"
            />
        </div>
        <div class="info-desc-container">
            <div class="info-heading-container">
                <p class="info-heading">Associate Consultant</p>
                <p class="info-date">2021</p>
            </div>
            <p class="info-description">
                Fullstack web development on the Orderly food cost solutioons
                product.
            </p>
            <p class="info-sub-description">
                SpringBoot, React, Angular, MySql, Docker, SCSS
            </p>
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
            color: $brand-darkest;
            font-weight: 300;
            border-bottom: 1px solid $brand-main;
            border-radius: 10px;
            padding: 5px;
            margin-bottom: 1em;

            .image-container {
                width: 68px;
                margin-right: 2em;

                .card-image {
                    object-fit: contain;
                    height: 68px;
                }
            }

            .info-desc-container {
                display: flex;
                flex-direction: column;
                margin-left: 1em;

                .info-heading-container {
                    display: flex;
                    justify-content: space-evenly;
                    align-items: center;
                    margin-bottom: 0;

                    .info-heading {
                        margin-right: 0.5em;
                        font-weight: bold;
                        font-size: 0.9em;
                    }

                    .info-date {
                        font-weight: light;
                        font-size: 0.8em;
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
                    max-width: 25ch;
                    overflow-wrap: break-word;
                }
            }
        }
    }
</style>
