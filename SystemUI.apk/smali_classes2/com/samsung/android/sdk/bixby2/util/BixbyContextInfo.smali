.class public Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;
.super Ljava/lang/Object;
.source "BixbyContextInfo.java"


# instance fields
.field private IS_MUSIC_ACTIVE:Ljava/lang/String;

.field private LOCALE:Ljava/lang/String;

.field private isMusicActive:Z

.field private locale:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "locale"

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->LOCALE:Ljava/lang/String;

    const-string v0, "isMusicActive"

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->IS_MUSIC_ACTIVE:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->locale:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMusicActive:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "locale"

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->LOCALE:Ljava/lang/String;

    const-string v0, "isMusicActive"

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->IS_MUSIC_ACTIVE:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->LOCALE:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->locale:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->IS_MUSIC_ACTIVE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMusicActive:Z

    return-void
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public isMusicActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMusicActive:Z

    return v0
.end method
