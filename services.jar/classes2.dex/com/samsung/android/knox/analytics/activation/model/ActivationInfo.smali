.class public Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo;
.super Ljava/lang/Object;
.source "ActivationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
    }
.end annotation


# instance fields
.field public mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

.field public mIsBootCase:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo;->mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    iput-boolean p2, p0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo;->mIsBootCase:Z

    return-void
.end method
