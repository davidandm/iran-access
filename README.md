<h1 align="center">"اسکریپت برای ایران اکسس کردن سرور"</h1>

<h2>برای ایمپورت کردن آیپی های ایران از دستور زیر استفاده کنید:</h2>

- توجه داشته باشید که حتما آیپی هاست و یک آیپی (VPN یا VPS) بعنوان آیپی معتمد نیز اضافه کنید.

```
bash <(curl -Ls https://raw.githubusercontent.com/davidandm/iran-access/main/iran.sh --ipv4)
```

- جهت حذف آیپی های ایران و بازگرداندن به حالت قبل از دستور زیر استفاده کنید.

```
bash <(curl -Ls https://raw.githubusercontent.com/davidandm/iran-access/main/default.sh --ipv4)
```
