scoop install spotify spicetify-cli
cp .\spicetify-themes\* "$(spicetify -c | Split-Path)\Themes\" -Recurse
spicetify config current_theme text
try {
    spicetify apply
}
catch {
    spicetify backup apply
}
