/* funzioni globali */
function alternaEvidenziazione(nomeClasse, pulsante) {
    if (pulsante) {
        $(pulsante).toggleClass('attivo');
    }
    $('.' + nomeClasse).toggleClass('evidenziato');
}

function apriFacsimile(url) {
    const modale = $('#modale-facsimile');
    const immagineTarget = $('#img-modale-target');
    if (modale.length && immagineTarget.length) {
        immagineTarget.attr('src', url);
        modale.css('display', 'block');
    }
}

/* inizializzazione eventi al caricamento */
$(document).ready(function() {
    const sezioni = document.querySelectorAll("section");
    const osservatore = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                $(".link-navigazione a").removeClass("pagina-attiva");
                $(".link-navigazione a[href='#" + entry.target.id + "']").addClass("pagina-attiva");
            }
        });
    }, { threshold: 0.1 });
    sezioni.forEach((sezione) => osservatore.observe(sezione));

    /* modali */
    $('.chiudi').click(function() {
        $(this).closest('.modale').hide();
    });

    $(window).click(function(evento) {
        if ($(evento.target).hasClass('modale')) {
            $(evento.target).hide();
        }
    });

    /* facsimile ingrandito */
    $('.anteprima-img-facs, .copertina-rivista-intro').click(function() {
        const url = $(this).data('url') || $(this).attr('src');
        if (url) {
            apriFacsimile(url);
        }
    });

    /* mappa interattiva e tassonomia */
    $('.voce-legenda[data-evidenzia]').click(function() {
        const classeTarget = $(this).data('evidenzia');
        alternaEvidenziazione(classeTarget, this);
    });

    /* pannello strumenti */
    $('#alterna-abbr').click(function() {
        $('body').toggleClass('mostra-espansioni');
        $(this).toggleClass('pulsante-attivo');
    });

    $('#alterna-orto').click(function() {
        $('body').toggleClass('mostra-ortografia-moderna');
        $(this).toggleClass('pulsante-attivo');
    });

    $('#alterna-glossa').click(function() {
        $('body').toggleClass('mostra-glosse');
        $(this).toggleClass('pulsante-attivo');
    });

    $('#alterna-trad').click(function() {
        const body = $('body');
        body.toggleClass('mostra-traduzione');
        $(this).toggleClass('pulsante-attivo');
    });

    /* glosse e dizionari */
    const tooltip = $('#tooltip-fluttuante');
    if (tooltip.length) {
        $('.entita').hover(
            function() {
                /* mouse entra */
                const titolo = $(this).attr('data-titolo-tooltip');
                const info = $(this).attr('data-info');
                if (!info) return;

                tooltip.empty();

                if (titolo) {
                    const titoloEl = $('<strong>').addClass('titolo-tooltip').text(titolo);
                    tooltip.append(titoloEl).append('<br><br>');
                }

                tooltip.append(document.createTextNode(info));
                tooltip.addClass('visibile');
            },
            function() {
                /* mouse esce */
                tooltip.removeClass('visibile');
            }
        ).mousemove(function(e) {
            /* mentre mouse scorre */
            tooltip.css({
                left: (e.pageX + 15) + 'px',
                top: (e.pageY + 15) + 'px'
            });
        });
    }
    
    $(".link-glossa").hover(
        function(e) {
            var targetID = $(this).attr("href");
            /* cerca testo nota corrispondente */
            var notaTesto = $(targetID).find(".testo-nota").text();
            
            /* mostra il tooltip */
            tooltip.empty();
            tooltip.html("<strong>Nota filologica:</strong><br><br>" + notaTesto);
            tooltip.addClass('visibile');
        },
        function() {
            /* nasconde il tooltip */
            tooltip.removeClass('visibile');
        }
    ).mousemove(function(e) {
        /* segue il mouse */
        tooltip.css({
            left: (e.pageX + 15) + 'px',
            top: (e.pageY + 15) + 'px'
        });
    });
    
    /* evita il salto pagina se si clicca sul numerino della nota */
    $(".link-glossa").click(function(e){
        e.preventDefault(); 
    });

});