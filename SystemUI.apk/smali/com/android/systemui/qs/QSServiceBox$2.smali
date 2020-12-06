.class Lcom/android/systemui/qs/QSServiceBox$2;
.super Ljava/lang/Object;
.source "QSServiceBox.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSServiceBox;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSServiceBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSServiceBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSServiceBox$2;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_BIXBY_ON_POWER_KEY:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "power_key_mapping"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox$2;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSServiceBox;->updateVisibilities()V

    :cond_1
    return-void
.end method
