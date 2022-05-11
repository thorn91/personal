<script lang="ts">
    window.onload = () => {
        setTimeout(() => {
            // document.getElementById('im').remove();
        }, 5000);
    };
</script>

<main class="main">
    <div class="top" />
    <div class="middle">
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
                target="_blank"
                ><i class="fa-brands fa-linkedin clickable" /></a
            >
        </div>
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
            "top"
            "middle"
            "bottom";
        grid-template-rows: 4fr 3fr auto;
        justify-content: center;
        align-items: center;

        .top {
            grid-area: top;
        }

        .middle {
            grid-area: middle;
            color: $brand-darkest;

            .initial-hello {
                animation: fadeout 1s;
                animation-fill-mode: forwards;
            }

            #im {
                animation: fadeout 2s;
                animation-fill-mode: forwards;
                animation-delay: 1s;
            }

            .name-section {
                opacity: 0;
                animation: fadein 1s, moveleft 4s;
                animation-fill-mode: forwards;
                animation-delay: 1s;
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
    }
</style>
