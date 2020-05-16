.class public Lcom/samsung/accessory/manager/DetachCheck;
.super Ljava/lang/Object;
.source "DetachCheck.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DetachCheck"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getNfcAdapter()Landroid/nfc/NfcAdapter;
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    return-object v0
.end method

.method private requestStartTypeS()[B
    .registers 4

    const-string v0, "DetachCheck"

    const-string v1, "Reqs"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/accessory/manager/DetachCheck;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->startCoverAuth()[B

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    const-string v1, "DetachCheck"

    const-string v2, "Fail start cover auth"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private requestStopTypeS()V
    .registers 4

    const-string v0, "DetachCheck"

    const-string/jumbo v1, "stopAuth"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/accessory/manager/DetachCheck;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->stopCoverAuth()Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "DetachCheck"

    const-string v2, "Fail stop cover auth"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    return-void
.end method


# virtual methods
.method public isAuthChipExist()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStartTypeS()[B

    move-result-object v0

    if-eqz v0, :cond_10

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_10

    invoke-direct {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    const/4 v1, 0x1

    return v1

    :cond_10
    invoke-direct {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    const/4 v1, 0x0

    return v1
.end method
