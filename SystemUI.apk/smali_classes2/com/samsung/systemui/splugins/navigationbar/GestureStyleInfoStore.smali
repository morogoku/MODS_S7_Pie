.class public interface abstract Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;
.super Ljava/lang/Object;
.source "GestureStyleInfoStore.java"


# virtual methods
.method public abstract getKeyInjectionInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onButtonOrderChanged(Z)V
.end method

.method public abstract onButtonsVisibilityChanged(ZZZ)V
.end method

.method public abstract onRequestedSystemKeyChanged(I)V
.end method

.method public abstract setEnableFollowingUp(ZI)V
.end method

.method public abstract setEnableOptionalGesture(Z)V
.end method

.method public abstract setEnablePolicy(ZI)V
.end method

.method public abstract setGestureThreshold(Z)V
.end method

.method public abstract setHomeKeySettings(ZZ)V
.end method

.method public setKeyInjector(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectorBase;)V
    .locals 0

    return-void
.end method

.method public abstract setRecentKeySettings(ZZ)V
.end method

.method public abstract update()V
.end method

.method public abstract updateOneHandModeEnabled(Z)V
.end method

.method public abstract updateSPayHintInfo(ZI)V
.end method
