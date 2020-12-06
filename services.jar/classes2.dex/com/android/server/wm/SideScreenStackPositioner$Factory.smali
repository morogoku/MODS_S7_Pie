.class interface abstract Lcom/android/server/wm/SideScreenStackPositioner$Factory;
.super Ljava/lang/Object;
.source "SideScreenStackPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SideScreenStackPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Factory"
.end annotation


# virtual methods
.method public createDockedStackPositioner(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/SideScreenStackPositioner;
    .registers 3

    new-instance v0, Lcom/android/server/wm/SideScreenDockedStackPositioner;

    invoke-direct {v0, p1}, Lcom/android/server/wm/SideScreenDockedStackPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-object v0
.end method

.method public createFixedStackPositioner(Lcom/android/server/wm/WindowManagerService;II)Lcom/android/server/wm/SideScreenStackPositioner;
    .registers 5

    new-instance v0, Lcom/android/server/wm/SideScreenFixedStackPositioner;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/SideScreenFixedStackPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;II)V

    return-object v0
.end method

.method public createSlideOverStackPositioner(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/SideScreenStackPositioner;
    .registers 3

    new-instance v0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;

    invoke-direct {v0, p1}, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-object v0
.end method
