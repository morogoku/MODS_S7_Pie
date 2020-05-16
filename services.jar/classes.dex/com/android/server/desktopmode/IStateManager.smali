.class interface abstract Lcom/android/server/desktopmode/IStateManager;
.super Ljava/lang/Object;
.source "IStateManager.java"


# virtual methods
.method public abstract dump(Lcom/android/internal/util/IndentingPrintWriter;)V
.end method

.method public abstract getState()Lcom/android/server/desktopmode/State;
.end method

.method public abstract notifyDualModeOnConfigurationChanged(Z)V
.end method

.method public abstract notifyDualModeSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V
.end method

.method public abstract notifyDualModeSetDesktopModeInternal(Z)V
.end method

.method public abstract notifyDualModeStartLoadingScreen(Z)V
.end method

.method public abstract notifyDualModeStopLoadingScreen(Z)V
.end method

.method public abstract notifyInitialSPenDetected(Z)V
.end method

.method public abstract notifyLauncherPackageReplaced(Z)V
.end method

.method public abstract notifyOnConfigurationChanged(Z)V
.end method

.method public abstract notifySPenEnabled(Z)V
.end method

.method public abstract notifySetDesktopMode(Lcom/android/server/desktopmode/State;Z)V
.end method

.method public abstract notifySetDesktopModeInternal(Z)V
.end method

.method public abstract notifyStartLoadingScreen(Z)V
.end method

.method public abstract notifyStopLoadingScreen(Z)V
.end method

.method public abstract registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V
.end method

.method public abstract setCoverState(Lcom/samsung/android/cover/CoverState;I)V
.end method

.method public abstract setCurrentUserId(I)V
.end method

.method public abstract setDesktopDisplayId(I)V
.end method

.method public abstract setDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
.end method

.method public abstract setDockFastChargingState(I)V
.end method

.method public abstract setDockLowChargerState(I)V
.end method

.method public abstract setDockState(Lcom/android/server/desktopmode/HardwareManager$DockState;)V
.end method

.method public abstract setEmergencyModeEnabled(Z)V
.end method

.method public abstract setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V
.end method

.method public abstract setExternalDisplayUpdated(Lcom/android/server/desktopmode/DisplayInfo;)V
.end method

.method public abstract setForcedInternalScreenModeEnabled(Z)V
.end method

.method public abstract setModeChangeLocked(Z)V
.end method

.method public abstract setMouseConnected(Z)V
.end method

.method public abstract setOverheated(Z)V
.end method

.method public abstract setPackageState(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPogoKeyboardConnected(Z)V
.end method

.method public abstract setTouchpadAvailable(Z)V
.end method

.method public abstract setTouchpadEnabled(Z)V
.end method

.method public abstract setWiredCharging(Z)V
.end method

.method public abstract setWiredFastCharging(Z)V
.end method

.method public abstract unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V
.end method
