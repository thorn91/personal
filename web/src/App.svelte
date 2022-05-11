<script lang="ts">
    window.onload = () => {
        setTimeout(() => {
            // document.getElementById('im').remove();
        }, 5000);
    };
</script>

<main class="main">
    <div class="upper">
        <h1 class="initial-hello">hello</h1>
        <h1 class="name-section"><span id="im">I'm </span>Thomas W. Horn</h1>
        <h2 class="description-section">Software Developer (FullStack)</h2>
    </div>
    <div class="bottom">
        <div class="bottom-navigation">
            <p class="clickable">experience</p>
            <p class="clickable">education</p>
            <div class="tools clickable">
                <i class="fa-solid fa-toolbox clickable" />
                <span class="tool-text clickable">Tools</span>
            </div>
            <a
                href="https://www.linkedin.com/in/thomaswarrenhorn/"
                title="LinkedIn: Thomas Horn"
                target="_blank"><i class="fa-brands fa-linkedin clickable" /></a
            >
        </div>
    </div>
    <div class="card">
        Hello
    </div>
</main>

<style lang="scss">
    // * {
    //     outline: 1px solid red;
    // }
    $brand-lightest: #ffcdb2;
    $brand-lighter: #ffb4a2;
    $brand-main: #e5989b;
    $brand-dark: #b5838d;
    $brand-darkest: #6d6875;

    :global(body) {
        background-color: $brand-lightest;
    }

    main {
        margin: 2em;
        display: grid;
        grid-template-areas:
            "upper"
            "bottom"
            "card";
        grid-template-rows: 3fr 2fr auto;
        justify-content: center;
        align-items: center;

        .upper {
            grid-area: upper;
            color: $brand-darkest;
            margin-top: 25%;

            .initial-hello {
                animation: fadeout 1.5s;
                animation-fill-mode: forwards;
            }

            #im {
                animation: fadeout 2s;
                animation-fill-mode: forwards;
                animation-delay: 0.5s;
            }

            .name-section {
                opacity: 0;
                animation: fadein 1s, moveleft 4s;
                animation-fill-mode: forwards;
                animation-delay: 0.5s;
            }
        }

        .bottom {
            grid-area: bottom;

            .bottom-navigation {
                display: flex;
                justify-content: space-between;
                align-items: center;
                color: $brand-dark;
                font-weight: bolder;

                a {
                    text-decoration: none;
                    color: inherit;
                }

                .clickable:hover {
                    cursor: pointer;
                    color: $brand-main;
                }

                .fa-linkedin {
                    font-size: 2em;
                }

                .tools {
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                    font-size: 1.1em;

                    .tool-text {
                        font-size: 0.7em;
                    }
                }
            }
        }

        .card {
                grid-area: card;
                display: flex;
                border: 2px solid $brand-dark;
                min-height: calc(100vh / 3);
                height: 100%;
            }

        @keyframes fadeout {
            0% {
                opacity: 1;
            }
            100% {
                opacity: 0;
            }
        }

        @keyframes fadein {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        @keyframes moveleft {
            from {
                transform: translateX(0%);
            }
            to {
                transform: translateX(-53.5px);
            }
        }

        /* Smartphones (portrait) ----------- */
        @media only screen and (max-width: 320px) {
            margin-bottom: 3em;
        }
    }
</style>
