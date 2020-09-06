.class interface abstract Lcom/android/server/wm/SideScreenPositioner$Factory;
.super Ljava/lang/Object;
.source "SideScreenPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SideScreenPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Factory"
.end annotation


# virtual methods
.method public createDockedPositioner(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/SideScreenPositioner;
    .registers 3

    new-instance v0, Lcom/android/server/wm/SideScreenDockedPositioner;

    invoke-direct {v0, p1}, Lcom/android/server/wm/SideScreenDockedPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-object v0
.end method

.method public createFixedPositioner(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/SideScreenPositioner;
    .registers 3

    new-instance v0, Lcom/android/server/wm/SideScreenFixedPositioner;

    invoke-direct {v0, p1}, Lcom/android/server/wm/SideScreenFixedPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-object v0
.end method

.method public createFloatingPositioner(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/SideScreenPositioner;
    .registers 3

    new-instance v0, Lcom/android/server/wm/SideScreenSlideOverPositioner;

    invoke-direct {v0, p1}, Lcom/android/server/wm/SideScreenSlideOverPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-object v0
.end method
