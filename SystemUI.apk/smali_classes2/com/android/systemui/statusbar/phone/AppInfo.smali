.class Lcom/android/systemui/statusbar/phone/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mUser:Landroid/os/UserHandle;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/phone/AppInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AppInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/AppInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AppInfo;->mUser:Landroid/os/UserHandle;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/AppInfo;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    return v0
.end method
