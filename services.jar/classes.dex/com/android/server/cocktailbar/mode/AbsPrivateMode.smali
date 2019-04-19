.class public abstract Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.super Ljava/lang/Object;
.source "AbsPrivateMode.java"

# interfaces
.implements Lcom/android/server/cocktailbar/mode/CocktailBarMode;


# instance fields
.field private mCocktailType:I

.field protected mContext:Landroid/content/Context;

.field protected mListener:Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

.field private mPrivateModeId:I

.field private mPrivateModeName:Ljava/lang/String;

.field private mRegistratonType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .registers 6

    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .registers 6

    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mCocktailType:I

    iput-object p1, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeId:I

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->getDefinedCocktailType()I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mCocktailType:I

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->getDefinedPrivateModeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mListener:Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    return-void
.end method


# virtual methods
.method public getCocktailType()I
    .registers 2

    iget v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mCocktailType:I

    return v0
.end method

.method abstract getDefinedCocktailType()I
.end method

.method abstract getDefinedPrivateModeName()Ljava/lang/String;
.end method

.method public getModeId()I
    .registers 2

    iget v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeId:I

    return v0
.end method

.method public getModeName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeName:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationType()I
    .registers 2

    iget v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    return v0
.end method

.method abstract isEnableMode()Z
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method protected registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public renewMode(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->isEnableMode()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->getModeId()I

    move-result v0

    goto :goto_c

    :cond_b
    move v0, p1

    :goto_c
    return v0
.end method

.method protected unregisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
