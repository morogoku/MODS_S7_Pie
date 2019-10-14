.class interface abstract Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;
.super Ljava/lang/Object;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PreconditionChecker"
.end annotation


# virtual methods
.method public abstract cancelOngoingNotification()V
.end method

.method public abstract isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z
.end method

.method public abstract isDesktopModeAvailableEx(ZZ)Z
.end method

.method public abstract updateDesktopMode(Lcom/android/server/desktopmode/State;Z)Z
.end method

.method public abstract updateOngoingNotification()V
.end method
