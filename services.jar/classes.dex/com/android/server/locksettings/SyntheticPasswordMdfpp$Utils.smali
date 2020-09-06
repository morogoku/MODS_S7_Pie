.class public Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;
.super Ljava/lang/Object;
.source "SyntheticPasswordMdfpp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordMdfpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# static fields
.field private static final ADDITIONAL_AAD_FIELD:I = 0x0

.field private static final MIN_ADDITIONAL_LENGTH:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs extractAAD([[B)[B
    .registers 2

    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method public static varargs hasAAD([[B)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_d

    array-length v2, p0

    if-lt v2, v1, :cond_d

    aget-object v2, p0, v0

    if-eqz v2, :cond_d

    move v0, v1

    nop

    :cond_d
    return v0
.end method
