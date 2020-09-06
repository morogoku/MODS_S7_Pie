.class public interface abstract Lcom/android/server/policy/MultiWindowManagerPolicy;
.super Ljava/lang/Object;
.source "MultiWindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;
    }
.end annotation


# direct methods
.method public static isDividerFamily(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0xa2b
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static windowTypeToLayerLw(I)I
    .registers 2

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_16

    :pswitch_4
    const/4 v0, -0x1

    return v0

    :pswitch_6
    const/4 v0, 0x7

    return v0

    :pswitch_8
    const/16 v0, 0x10

    return v0

    :pswitch_b
    return v0

    :pswitch_c
    const/16 v0, 0xb

    return v0

    :pswitch_f
    const/4 v0, 0x3

    return v0

    :pswitch_11
    return v0

    :pswitch_12
    const/16 v0, 0x15

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0xa2a
        :pswitch_12
        :pswitch_11
        :pswitch_f
        :pswitch_11
        :pswitch_c
        :pswitch_11
        :pswitch_11
        :pswitch_4
        :pswitch_4
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public abstract init(Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;Lcom/android/server/policy/WindowManagerPolicy;)V
.end method

.method public abstract isLockTaskModeEnabled()Z
.end method

.method public abstract isQuickPanelExpanded()Z
.end method
