.class public Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableIconWithRes"
.end annotation


# instance fields
.field private final mId:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;

    iget v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;->mId:I

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;->mId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
