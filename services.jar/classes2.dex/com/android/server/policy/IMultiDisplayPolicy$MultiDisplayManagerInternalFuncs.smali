.class public interface abstract Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;
.super Ljava/lang/Object;
.source "IMultiDisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/IMultiDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiDisplayManagerInternalFuncs"
.end annotation


# virtual methods
.method public abstract getDecorCaptionHeight(I)I
.end method

.method public abstract getDexModeLw()I
.end method

.method public abstract isDexDisplayActivated(I)Z
.end method

.method public abstract isDexImePolicyNeededLocked()Z
.end method

.method public abstract isForcedDefaultDisplay()Z
.end method

.method public abstract lidOpened(Z)V
.end method

.method public abstract reevaluateStatusBarVisibility(I)V
.end method

.method public abstract requestLayoutTraversal(I)V
.end method
