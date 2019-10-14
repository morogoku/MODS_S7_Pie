.class public final enum Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
.super Ljava/lang/Enum;
.source "SemFaceLandmark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceLandmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EngineOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

.field public static final enum LANDMARK_13_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

.field public static final enum LANDMARK_35_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    const-string v1, "LANDMARK_13_KEYPOINTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_13_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    new-instance v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    const-string v1, "LANDMARK_35_KEYPOINTS"

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_35_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    new-array v0, v3, [Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    sget-object v1, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_13_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_35_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->$VALUES:[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    .locals 1

    const-class v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->$VALUES:[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    invoke-virtual {v0}, [Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    return-object v0
.end method
