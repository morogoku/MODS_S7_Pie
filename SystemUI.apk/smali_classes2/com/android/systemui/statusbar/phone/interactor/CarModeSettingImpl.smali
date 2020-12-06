.class public Lcom/android/systemui/statusbar/phone/interactor/CarModeSettingImpl;
.super Ljava/lang/Object;
.source "CarModeSettingImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/interactor/CarModeSetting;


# instance fields
.field mCallback:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$OnChangedCallback;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/CarModeSettingImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic lambda$addCallback$0(Ljava/lang/Runnable;Landroid/net/Uri;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/lang/Runnable;)V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$CarModeSettingImpl$mqW3RDe80rMNmwzYWl7A7mtRIkc;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$CarModeSettingImpl$mqW3RDe80rMNmwzYWl7A7mtRIkc;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/CarModeSettingImpl;->mCallback:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$OnChangedCallback;

    const-class v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/interactor/CarModeSettingImpl;->mCallback:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "car_mode_blocking_system_key"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public isBlockingSystemKey()Z
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->getCarModeBlockingSystemKey()Z

    move-result v0

    return v0
.end method
