def get_text_from_web_elements(l):
    l = map(lambda x: x.get_attribute('innerHTML'), l)
    l = map(lambda x: x.replace('\n', '').replace('\t', '').encode("ascii", "ignore").lower(), l)
    # l = map(lambda x: re.sub('<[^>]+>', '', x), l)
    return l