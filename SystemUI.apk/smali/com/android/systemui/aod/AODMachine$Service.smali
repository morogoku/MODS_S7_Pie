.class public interface abstract Lcom/android/systemui/aod/AODMachine$Service;
.super Ljava/lang/Object;
.source "AODMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/aod/AODMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Service"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/aod/AODMachine$Service$Delegate;
    }
.end annotation


# virtual methods
.method public abstract finish()V
.end method

.method public abstract semSetDozeScreenBrightness(II)V
.end method

.method public abstract setDozeScreenState(I)V
.end method

.method public abstract updateAODWindowLayoutParams()V
.end method
