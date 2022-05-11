<script lang="ts">
    import ExperienceCard from './ExperienceCard.svelte';
    import EducationCard from './EducationCard.svelte';

    let showExperience = false;
    let showEducation = false;

    const toggleExperience = () => {
        showExperience = !showExperience;
        showEducation = false;
    };

    const toggleEducation = () => {
        showEducation = !showEducation;
        showExperience = false;
    };
</script>

<main class="main">
    <div class="upper">
        <h1 class="initial-hello">hello</h1>
        <h1 class="name-section"><span id="im">I'm </span>Thomas W. Horn</h1>
        <h2 class="description-section">Software Developer (Fullstack)</h2>
    </div>
    <div class="bottom">
        <div class="bottom-navigation">
            <p class="clickable" on:click={toggleExperience}>experience</p>
            <p class="clickable" on:click={toggleEducation}>education</p>
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
    {#if showExperience}
        <ExperienceCard />
    {/if}
    {#if showEducation}
        <EducationCard />
    {/if}
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

            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -khtml-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;

            .bottom-navigation {
                display: flex;
                justify-content: space-between;
                align-items: center;
                color: $brand-dark;
                font-weight: bolder;
                font-size: 1.2em;

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

        /* Smartphones (portrait) ----------- */
        @media only screen and (max-width: 320px) {
            margin-bottom: 3em;
        }
    }
</style>
