
    <div class="modal" tabindex="-1">
        <div class="modal-row">
            <div class="modal-cell">
                <div class="form-modal-frame--search form-modal-frame">
                    <div class="section-title">
                        <span>Поиск</span>
                    </div>
                    
                    <div class="search" id="search">
                        <div class="search-column">
                                <div class="input-line">
                                    <input class="text-input" name="search" type="text" placeholder="Поиск"/>
                                </div>
                                <button class="green-butn" type="button">Найти</button>
                        </div>
        
                        <div class="search-column">
                            <div class="search-title">Часто ищут</div>
                            <ul>
                                <?php foreach($search_results as $search_result) { ?>
                                <li>
                                    <a href="<?php echo $search_result['href']; ?>"><?php echo $search_result['string']; ?></a>
                                </li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="modal-close-small" data-dismiss="modal">
                        <svg class="icon-uniF14F" ><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-uniF14F"></use></svg>
                    </div>
                </div>
                <div class="modal-close-wide"></div>
            </div>
        </div>
    </div>
<script>
    $('#search').find('button').on('click', function() {
        var url = $('base').attr('href') + 'index.php?route=product/search';

        var value = $('#search input[name=\'search\']').val();

        if (value) {
            url += '&search=' + encodeURIComponent(value);
        }

        location = url;
    });

    $('#search input[name=\'search\']').on('keydown', function(e) {
        if (e.keyCode == 13) {
            $('header #search input[name=\'search\']').parent().find('button').trigger('click');
        }
    });
</script>