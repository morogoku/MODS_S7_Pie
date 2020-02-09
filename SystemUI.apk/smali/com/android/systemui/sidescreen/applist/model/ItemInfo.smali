.class public abstract Lcom/android/systemui/sidescreen/applist/model/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sidescreen/applist/model/ItemInfo$ItemCallback;
    }
.end annotation


# instance fields
.field mCallback:Lcom/android/systemui/sidescreen/applist/model/ItemInfo$ItemCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getActivityOptions(Landroid/content/Context;)Landroid/app/ActivityOptions;
    .locals 4

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f0100bf

    const v2, 0x7f0100c0

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v0, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCallback()Lcom/android/systemui/sidescreen/applist/model/ItemInfo$ItemCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->mCallback:Lcom/android/systemui/sidescreen/applist/model/ItemInfo$ItemCallback;

    return-object v0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public notifyAppDataLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->mCallback:Lcom/android/systemui/sidescreen/applist/model/ItemInfo$ItemCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->mCallback:Lcom/android/systemui/sidescreen/applist/model/ItemInfo$ItemCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo$ItemCallback;->onAppDataLoaded(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/sidescreen/applist/model/ItemInfo$ItemCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->mCallback:Lcom/android/systemui/sidescreen/applist/model/ItemInfo$ItemCallback;

    return-void
.end method

.method public abstract startApp(Landroid/content/Context;I)V
.end method
