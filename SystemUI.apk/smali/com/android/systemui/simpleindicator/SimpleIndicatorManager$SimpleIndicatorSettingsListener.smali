.class Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;
.super Ljava/lang/Object;
.source "SimpleIndicatorManager.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleIndicatorSettingsListener"
.end annotation


# instance fields
.field private final mSettingsValueList:[Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;->this$0:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const-string/jumbo v0, "status_bar_show_network_information"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;-><init>(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;)V

    return-void
.end method

.method public static synthetic lambda$onChanged$0(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;->this$0:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-static {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->access$100(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_INDICATOR_HIDE_NETWORK_INFORMATION:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;->this$0:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    iget-object v0, v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getMainHanlder()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$SimpleIndicatorSettingsListener$2k-ZLRMkDaGW4yHH-ZH2cIPYX4o;

    invoke-direct {v1, p0}, Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$SimpleIndicatorSettingsListener$2k-ZLRMkDaGW4yHH-ZH2cIPYX4o;-><init>(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
