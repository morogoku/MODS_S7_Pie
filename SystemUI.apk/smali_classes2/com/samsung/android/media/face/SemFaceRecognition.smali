.class public Lcom/samsung/android/media/face/SemFaceRecognition;
.super Ljava/lang/Object;
.source "SemFaceRecognition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/face/SemFaceRecognition$ClusterInfo;,
        Lcom/samsung/android/media/face/SemFaceRecognition$Cluster;
    }
.end annotation


# static fields
.field private static sRecognitionInstance:Lcom/samsung/android/media/face/SemFaceRecognition;


# instance fields
.field private mFace:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mLandmark:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/face/SemFaceRecognition;->sRecognitionInstance:Lcom/samsung/android/media/face/SemFaceRecognition;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mFace:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mLandmark:Ljava/util/ArrayList;

    return-void
.end method
