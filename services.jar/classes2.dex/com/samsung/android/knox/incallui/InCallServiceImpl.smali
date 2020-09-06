.class public Lcom/samsung/android/knox/incallui/InCallServiceImpl;
.super Landroid/telecom/InCallService;
.source "InCallServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InCallServiceImpl"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/InCallService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .registers 3

    invoke-static {}, Lcom/samsung/android/knox/incallui/TelecomAdapter;->getInstance()Lcom/samsung/android/knox/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/incallui/TelecomAdapter;->onCallAdded(Landroid/telecom/Call;)V

    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .registers 3

    invoke-static {}, Lcom/samsung/android/knox/incallui/TelecomAdapter;->getInstance()Lcom/samsung/android/knox/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/incallui/TelecomAdapter;->onCallRemoved(Landroid/telecom/Call;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onUnbind(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    return v0
.end method
