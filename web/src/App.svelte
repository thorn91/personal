<script lang="ts">
    window.onload = () => {
        setTimeout(() => {
            // document.getElementById('im').style.opacity = 'none';
        }, 4000);
    }

</script>

<main class="main">
    <div class="top">
    </div>
    <div class="middle">
        <h1 class="initial-hello">hello</h1>
        <h1 class="name-section"><span id="im">I'm</span> Thomas W. Horn</h1>
    </div>
    <div class="bottom">
        <div class="bottom-navigation">hello</div>
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
                transform: translateX(-20%);
            }
        }
    }
</style>
