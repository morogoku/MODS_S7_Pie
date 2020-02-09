.class public Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;
.super Ljava/lang/Object;
.source "FloatingShortcutFlyweight.java"


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppTitle:Ljava/lang/String;

.field private mComponentName:Landroid/content/ComponentName;

.field private mIsEnabled:Z

.field private mLaunchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mAppTitle:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mLaunchIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mComponentName:Landroid/content/ComponentName;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mIsEnabled:Z

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mAppTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mIsEnabled:Z

    return v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mIsEnabled:Z

    return-void
.end method

.method public setLaunchIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mLaunchIntent:Landroid/content/Intent;

    return-void
.end method
