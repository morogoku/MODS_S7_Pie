.class public Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSettingImpl;
.super Ljava/lang/Object;
.source "ForceImmersiveSettingImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSetting;


# static fields
.field private static CONFIRMED:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Confirmed"

    sput-object v0, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSettingImpl;->CONFIRMED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSettingImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getToastCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSettingImpl;->mContext:Landroid/content/Context;

    const-string v1, "NavigationBarForceImmersiveToastCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isHelpConfirmed()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSettingImpl;->mContext:Landroid/content/Context;

    const-string v1, "NavigationBarForceImmersiveConfirmation"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSettingImpl;->CONFIRMED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setHelpConfirmed(Z)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSettingImpl;->CONFIRMED:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSettingImpl;->mContext:Landroid/content/Context;

    const-string v2, "NavigationBarForceImmersiveConfirmation"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setToastCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/ForceImmersiveSettingImpl;->mContext:Landroid/content/Context;

    const-string v1, "NavigationBarForceImmersiveToastCount"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
