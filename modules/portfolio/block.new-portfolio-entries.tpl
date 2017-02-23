{if !empty($block_portfolio_entries)}
	<div class="ia-items portfolio-entries m-b ">
		<div class="row no-gutter">
			{foreach $block_portfolio_entries as $pf_entry}
				<div class="col-md-2">
					<div class="ia-item ia-item--card ">
						{if $pf_entry.image}
							<a href="{$smarty.const.IA_URL}portfolio/{$pf_entry.id}-{$pf_entry.alias}" class="ia-item__image ">{ia_image file=$pf_entry.image title=$pf_entry.title}
							<!-- <span class="portfolio__overlaycateg">{$pf_entry.title|escape: html}</span> -->
							<span class="portfolio__overlaytittle">{$pf_entry.body|strip_tags|truncate:$core.config.portfolio_desc_length:'...'}</span></a>
						{/if}

					</div>
				</div>

				{if $pf_entry@iteration % 6 == 0}
					</div>
					<div class="row">
				{/if}
			{/foreach}
		</div>

		<p class="text-center portfolio__bg">
			{lang key='portfolio_addtext'}
			<a class="btn btn-primary-outline m-r page-scroll btn-default btn-xl" href="{$smarty.const.IA_URL}portfolio/">{lang key='pf_view_all'}</a>
		</p>
	</div>
{else}
	<div class="alert alert-info">{lang key='pf_no_entries'}</div>
{/if}

{ia_add_media files='css: _IA_URL_modules/portfolio/templates/front/css/style'}