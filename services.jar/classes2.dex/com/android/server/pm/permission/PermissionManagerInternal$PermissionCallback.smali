.class public Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
.super Ljava/lang/Object;
.source "PermissionManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .registers 3

    return-void
.end method

.method public onInstallPermissionGranted()V
    .registers 1

    return-void
.end method

.method public onInstallPermissionRevoked()V
    .registers 1

    return-void
.end method

.method public onInstallPermissionUpdated()V
    .registers 1

    return-void
.end method

.method public onPermissionChanged()V
    .registers 1

    return-void
.end method

.method public onPermissionGranted(II)V
    .registers 3

    return-void
.end method

.method public onPermissionRemoved()V
    .registers 1

    return-void
.end method

.method public onPermissionRevoked(II)V
    .registers 3

    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .registers 3

    return-void
.end method
