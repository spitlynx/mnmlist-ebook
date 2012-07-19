HTML = book/about.html \
	book/uncopyright.html \
	book/my-minimalist-desktop.html \
	book/uncopyright-and-a-minimalist-mindset.html \
	book/rethinking-necessities.html \
	book/why-less-stuff-is-better.html \
	book/consumerism-vs-minimalism.html \
	book/step-lightly.html \
	book/if-you-had-to-move-what-would-you-take.html \
	book/minimalism-is-the-end-of-organizing.html \
	book/getting-to-minimal-all-the-info-you-need-to-track.html \
	book/how-to-let-go-of-possessions.html \
	book/non-minimalists.html \
	book/5-simple-steps-to-declutter-your-closet.html \
	book/carry-less-or-pockets-like-air.html \
	book/minimalist-faqs.html \
	book/how-to-be-less-busy-in-a-busy-busy-world.html \
	book/revolt-get-free-from-the-tyranny-of-the-news-the-need-to-stay-updated.html \
	book/buying-is-not-the-solution.html \
	book/clutter-is-procrastination.html \
	book/a-case-for-storing-all-your-info-in-text-files.html \
	book/minimalist-mac.html \
	book/goals.html \
	book/the-true-cost-of-stuff.html \
	book/quick-minimalism.html \
	book/the-art-of-brief-emails.html \
	book/unautomate.html \
	book/beat-advertising.html \
	book/avoid-new.html \
	book/the-lust-for-new-things.html \
	book/on-owning-nothing.html \
	book/the-beauty-of-small.html \
	book/the-400-word-promise.html \
	book/the-sweet-science-of-less-mail.html \
	book/simplicity-is-the-path.html \
	book/learn-to-love-less.html \
	book/unfriending.html \
	book/what-twitter-needs-to-add-next.html \
	book/slow-reading.html \
	book/slowness-is-happiness.html \
	book/eating-less-to-be-lighter.html \
	book/reduce-footprint.html \
	book/minimalist-books.html \
	book/minimalist-eating.html \
	book/minimalism-steps.html \
	book/50-words.html \
	book/50-things.html \
	book/distractions.html \
	book/cherished-mementos.html \
	book/letting-go-of-desires.html \
	book/the-minimalism-of-veganism.html \
	book/wash-your-bowl.html \
	book/stop-making-it-complicated.html \
	book/less.html \
	book/facebook-friends.html \
	book/constraints.html \
	book/empower.html \
	book/minimalist-fun.html \
	book/minimalist-backup.html \
	book/joy-of-walking.html \
	book/finding-contentedness.html \
	book/ipad.html \
	book/security.html \
	book/convenience.html \
	book/small-changes.html \
	book/7-ways-to-avoid-buying-new-stuff.html \
	book/need-less.html \
	book/reimagined.html \
	book/reimagined2.html \
	book/manufacturing-content.html \
	book/on-economy.html \
	book/unconsumers.html \
	book/the-ellipsis.html \
	book/digital-vacation.html \
	book/not-affluent.html \
	book/never-give-up.html \
	book/moving.html \
	book/a-fresh-start.html \
	book/the-start.html \
	book/undistracted-reading.html \
	book/fake-needs.html \
	book/subtraction.html \
	book/nv.html \
	book/essentials.html \
	book/zen-limits.html \
	book/corporations.html \
	book/paring.html \
	book/fewer-bills.html \
	book/ad-free.html \
	book/needless.html \
	book/petite.html \
	book/local.html \
	book/fear.html \
	book/brew.html \
	book/pizza.html \
	book/tics.html \
	book/city.html \
	book/tinyblog.html \
	book/ads.html \
	book/without.html \
	book/in-case.html \
	book/ideas.html \
	book/out.html \
	book/tea.html \
	book/nyc.html \
	book/gear.html \
	book/want.html \
	book/iphone.html \
	book/creep.html \
	book/nope.html \
	book/pshh.html \
	book/scattered.html \
	book/finding.html \
	book/devices.html \
	book/walk-away.html \
	book/ok.html \
	book/happy.html \
	book/everyone-else.html \
	book/unknown.html \
	book/links.html \
	book/quotes.html

all: mnmlist.html mnmlist.mobi mnmlist.epub

regenerate: clean all

mnmlist.html: $(HTML)
	@echo "\n... generating $@"
	cat book/header.html $(HTML) book/footer.html > mnmlist.html

mnmlist.mobi: $(mnmlist.html)
	@echo "\n... generating $@"
	ebook-convert mnmlist.html mnmlist.mobi --authors "Leo Babauta" --language en --disable-font-rescaling --level1-toc //h:h2 --output-profile kindle

mnmlist.epub: $(mnmlist.html)
	@echo "\n... generating $@"
	ebook-convert mnmlist.html mnmlist.epub \
		--title "mnmlist.com blog" \
		--no-default-epub-cover \
		--authors "Leo Babauta" \
		--language en \
		--level1-toc //h:h2 \
		--disable-font-rescaling


clean:
	rm -f mnmlist.*

.PHONY: view clean regenerate
