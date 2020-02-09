.class public Lcom/android/settingslib/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;,
        Lcom/android/settingslib/bluetooth/Utils$ErrorListener;
    }
.end annotation


# static fields
.field private static BD_ROTATE_LEFT:[Ljava/lang/String;

.field private static BD_ROTATE_RIGHT:[Ljava/lang/String;

.field private static final CONTACT_NUMBER:[Ljava/lang/String;

.field public static final DEBUG:Z

.field static checksum:Ljava/util/zip/Checksum;

.field private static mQuickPannelOn:Z

.field private static sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    const-string v0, "data1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/bluetooth/Utils;->CONTACT_NUMBER:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "00"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "02"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "04"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "06"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "08"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "0A"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "0C"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "0E"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "10"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "12"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "14"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "16"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "18"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "1A"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "1C"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "1E"

    const/16 v17, 0xf

    aput-object v2, v1, v17

    const-string v2, "20"

    const/16 v17, 0x10

    aput-object v2, v1, v17

    const-string v2, "22"

    const/16 v17, 0x11

    aput-object v2, v1, v17

    const-string v2, "24"

    const/16 v17, 0x12

    aput-object v2, v1, v17

    const-string v2, "26"

    const/16 v17, 0x13

    aput-object v2, v1, v17

    const-string v2, "28"

    const/16 v17, 0x14

    aput-object v2, v1, v17

    const-string v2, "2A"

    const/16 v17, 0x15

    aput-object v2, v1, v17

    const-string v2, "2C"

    const/16 v17, 0x16

    aput-object v2, v1, v17

    const-string v2, "2E"

    const/16 v17, 0x17

    aput-object v2, v1, v17

    const-string v2, "30"

    const/16 v17, 0x18

    aput-object v2, v1, v17

    const-string v2, "32"

    const/16 v17, 0x19

    aput-object v2, v1, v17

    const-string v2, "34"

    const/16 v17, 0x1a

    aput-object v2, v1, v17

    const-string v2, "36"

    const/16 v17, 0x1b

    aput-object v2, v1, v17

    const-string v2, "38"

    const/16 v17, 0x1c

    aput-object v2, v1, v17

    const-string v2, "3A"

    const/16 v17, 0x1d

    aput-object v2, v1, v17

    const-string v2, "3C"

    const/16 v17, 0x1e

    aput-object v2, v1, v17

    const-string v2, "3E"

    const/16 v17, 0x1f

    aput-object v2, v1, v17

    const-string v2, "40"

    const/16 v17, 0x20

    aput-object v2, v1, v17

    const-string v2, "42"

    const/16 v17, 0x21

    aput-object v2, v1, v17

    const-string v2, "44"

    const/16 v17, 0x22

    aput-object v2, v1, v17

    const-string v2, "46"

    const/16 v17, 0x23

    aput-object v2, v1, v17

    const-string v2, "48"

    const/16 v17, 0x24

    aput-object v2, v1, v17

    const-string v2, "4A"

    const/16 v17, 0x25

    aput-object v2, v1, v17

    const-string v2, "4C"

    const/16 v17, 0x26

    aput-object v2, v1, v17

    const-string v2, "4E"

    const/16 v17, 0x27

    aput-object v2, v1, v17

    const-string v2, "50"

    const/16 v17, 0x28

    aput-object v2, v1, v17

    const-string v2, "52"

    const/16 v17, 0x29

    aput-object v2, v1, v17

    const-string v2, "54"

    const/16 v17, 0x2a

    aput-object v2, v1, v17

    const-string v2, "56"

    const/16 v17, 0x2b

    aput-object v2, v1, v17

    const-string v2, "58"

    const/16 v17, 0x2c

    aput-object v2, v1, v17

    const-string v2, "5A"

    const/16 v17, 0x2d

    aput-object v2, v1, v17

    const-string v2, "5C"

    const/16 v17, 0x2e

    aput-object v2, v1, v17

    const-string v2, "5E"

    const/16 v17, 0x2f

    aput-object v2, v1, v17

    const-string v2, "60"

    const/16 v17, 0x30

    aput-object v2, v1, v17

    const-string v2, "62"

    const/16 v17, 0x31

    aput-object v2, v1, v17

    const-string v2, "64"

    const/16 v17, 0x32

    aput-object v2, v1, v17

    const-string v2, "66"

    const/16 v17, 0x33

    aput-object v2, v1, v17

    const-string v2, "68"

    const/16 v17, 0x34

    aput-object v2, v1, v17

    const-string v2, "6A"

    const/16 v17, 0x35

    aput-object v2, v1, v17

    const-string v2, "6C"

    const/16 v17, 0x36

    aput-object v2, v1, v17

    const-string v2, "6E"

    const/16 v17, 0x37

    aput-object v2, v1, v17

    const-string v2, "70"

    const/16 v17, 0x38

    aput-object v2, v1, v17

    const-string v2, "72"

    const/16 v17, 0x39

    aput-object v2, v1, v17

    const-string v2, "74"

    const/16 v17, 0x3a

    aput-object v2, v1, v17

    const-string v2, "76"

    const/16 v17, 0x3b

    aput-object v2, v1, v17

    const-string v2, "78"

    const/16 v17, 0x3c

    aput-object v2, v1, v17

    const-string v2, "7A"

    const/16 v17, 0x3d

    aput-object v2, v1, v17

    const-string v2, "7C"

    const/16 v17, 0x3e

    aput-object v2, v1, v17

    const-string v2, "7E"

    const/16 v17, 0x3f

    aput-object v2, v1, v17

    const-string v2, "80"

    const/16 v17, 0x40

    aput-object v2, v1, v17

    const-string v2, "82"

    const/16 v17, 0x41

    aput-object v2, v1, v17

    const-string v2, "84"

    const/16 v17, 0x42

    aput-object v2, v1, v17

    const-string v2, "86"

    const/16 v17, 0x43

    aput-object v2, v1, v17

    const-string v2, "88"

    const/16 v17, 0x44

    aput-object v2, v1, v17

    const-string v2, "8A"

    const/16 v17, 0x45

    aput-object v2, v1, v17

    const-string v2, "8C"

    const/16 v17, 0x46

    aput-object v2, v1, v17

    const-string v2, "8E"

    const/16 v17, 0x47

    aput-object v2, v1, v17

    const-string v2, "90"

    const/16 v17, 0x48

    aput-object v2, v1, v17

    const-string v2, "92"

    const/16 v17, 0x49

    aput-object v2, v1, v17

    const-string v2, "94"

    const/16 v17, 0x4a

    aput-object v2, v1, v17

    const-string v2, "96"

    const/16 v17, 0x4b

    aput-object v2, v1, v17

    const-string v2, "98"

    const/16 v17, 0x4c

    aput-object v2, v1, v17

    const-string v2, "9A"

    const/16 v17, 0x4d

    aput-object v2, v1, v17

    const-string v2, "9C"

    const/16 v17, 0x4e

    aput-object v2, v1, v17

    const-string v2, "9E"

    const/16 v17, 0x4f

    aput-object v2, v1, v17

    const-string v2, "A0"

    const/16 v17, 0x50

    aput-object v2, v1, v17

    const-string v2, "A2"

    const/16 v17, 0x51

    aput-object v2, v1, v17

    const-string v2, "A4"

    const/16 v17, 0x52

    aput-object v2, v1, v17

    const-string v2, "A6"

    const/16 v17, 0x53

    aput-object v2, v1, v17

    const-string v2, "A8"

    const/16 v17, 0x54

    aput-object v2, v1, v17

    const-string v2, "AA"

    const/16 v17, 0x55

    aput-object v2, v1, v17

    const-string v2, "AC"

    const/16 v17, 0x56

    aput-object v2, v1, v17

    const-string v2, "AE"

    const/16 v17, 0x57

    aput-object v2, v1, v17

    const-string v2, "B0"

    const/16 v17, 0x58

    aput-object v2, v1, v17

    const-string v2, "B2"

    const/16 v17, 0x59

    aput-object v2, v1, v17

    const-string v2, "B4"

    const/16 v17, 0x5a

    aput-object v2, v1, v17

    const-string v2, "B6"

    const/16 v17, 0x5b

    aput-object v2, v1, v17

    const-string v2, "B8"

    const/16 v17, 0x5c

    aput-object v2, v1, v17

    const-string v2, "BA"

    const/16 v17, 0x5d

    aput-object v2, v1, v17

    const-string v2, "BC"

    const/16 v17, 0x5e

    aput-object v2, v1, v17

    const-string v2, "BE"

    const/16 v17, 0x5f

    aput-object v2, v1, v17

    const-string v2, "C0"

    const/16 v17, 0x60

    aput-object v2, v1, v17

    const-string v2, "C2"

    const/16 v17, 0x61

    aput-object v2, v1, v17

    const-string v2, "C4"

    const/16 v17, 0x62

    aput-object v2, v1, v17

    const-string v2, "C6"

    const/16 v17, 0x63

    aput-object v2, v1, v17

    const-string v2, "C8"

    const/16 v17, 0x64

    aput-object v2, v1, v17

    const-string v2, "CA"

    const/16 v17, 0x65

    aput-object v2, v1, v17

    const-string v2, "CC"

    const/16 v17, 0x66

    aput-object v2, v1, v17

    const-string v2, "CE"

    const/16 v17, 0x67

    aput-object v2, v1, v17

    const-string v2, "D0"

    const/16 v17, 0x68

    aput-object v2, v1, v17

    const-string v2, "D2"

    const/16 v17, 0x69

    aput-object v2, v1, v17

    const-string v2, "D4"

    const/16 v17, 0x6a

    aput-object v2, v1, v17

    const-string v2, "D6"

    const/16 v17, 0x6b

    aput-object v2, v1, v17

    const-string v2, "D8"

    const/16 v17, 0x6c

    aput-object v2, v1, v17

    const-string v2, "DA"

    const/16 v17, 0x6d

    aput-object v2, v1, v17

    const-string v2, "DC"

    const/16 v17, 0x6e

    aput-object v2, v1, v17

    const-string v2, "DE"

    const/16 v17, 0x6f

    aput-object v2, v1, v17

    const-string v2, "E0"

    const/16 v17, 0x70

    aput-object v2, v1, v17

    const-string v2, "E2"

    const/16 v17, 0x71

    aput-object v2, v1, v17

    const-string v2, "E4"

    const/16 v17, 0x72

    aput-object v2, v1, v17

    const-string v2, "E6"

    const/16 v17, 0x73

    aput-object v2, v1, v17

    const-string v2, "E8"

    const/16 v17, 0x74

    aput-object v2, v1, v17

    const-string v2, "EA"

    const/16 v17, 0x75

    aput-object v2, v1, v17

    const-string v2, "EC"

    const/16 v17, 0x76

    aput-object v2, v1, v17

    const-string v2, "EE"

    const/16 v17, 0x77

    aput-object v2, v1, v17

    const-string v2, "F0"

    const/16 v17, 0x78

    aput-object v2, v1, v17

    const-string v2, "F2"

    const/16 v17, 0x79

    aput-object v2, v1, v17

    const-string v2, "F4"

    const/16 v17, 0x7a

    aput-object v2, v1, v17

    const-string v2, "F6"

    const/16 v17, 0x7b

    aput-object v2, v1, v17

    const-string v2, "F8"

    const/16 v17, 0x7c

    aput-object v2, v1, v17

    const-string v2, "FA"

    const/16 v17, 0x7d

    aput-object v2, v1, v17

    const-string v2, "FC"

    const/16 v17, 0x7e

    aput-object v2, v1, v17

    const-string v2, "FE"

    const/16 v17, 0x7f

    aput-object v2, v1, v17

    const-string v2, "01"

    const/16 v17, 0x80

    aput-object v2, v1, v17

    const-string v2, "03"

    const/16 v17, 0x81

    aput-object v2, v1, v17

    const-string v2, "05"

    const/16 v17, 0x82

    aput-object v2, v1, v17

    const-string v2, "07"

    const/16 v17, 0x83

    aput-object v2, v1, v17

    const-string v2, "09"

    const/16 v17, 0x84

    aput-object v2, v1, v17

    const-string v2, "0B"

    const/16 v17, 0x85

    aput-object v2, v1, v17

    const-string v2, "0D"

    const/16 v17, 0x86

    aput-object v2, v1, v17

    const-string v2, "0F"

    const/16 v17, 0x87

    aput-object v2, v1, v17

    const-string v2, "11"

    const/16 v17, 0x88

    aput-object v2, v1, v17

    const-string v2, "13"

    const/16 v17, 0x89

    aput-object v2, v1, v17

    const-string v2, "15"

    const/16 v17, 0x8a

    aput-object v2, v1, v17

    const-string v2, "17"

    const/16 v17, 0x8b

    aput-object v2, v1, v17

    const-string v2, "19"

    const/16 v17, 0x8c

    aput-object v2, v1, v17

    const-string v2, "1B"

    const/16 v17, 0x8d

    aput-object v2, v1, v17

    const-string v2, "1D"

    const/16 v17, 0x8e

    aput-object v2, v1, v17

    const-string v2, "1F"

    const/16 v17, 0x8f

    aput-object v2, v1, v17

    const-string v2, "21"

    const/16 v17, 0x90

    aput-object v2, v1, v17

    const-string v2, "23"

    const/16 v17, 0x91

    aput-object v2, v1, v17

    const-string v2, "25"

    const/16 v17, 0x92

    aput-object v2, v1, v17

    const-string v2, "27"

    const/16 v17, 0x93

    aput-object v2, v1, v17

    const-string v2, "29"

    const/16 v17, 0x94

    aput-object v2, v1, v17

    const-string v2, "2B"

    const/16 v17, 0x95

    aput-object v2, v1, v17

    const-string v2, "2D"

    const/16 v17, 0x96

    aput-object v2, v1, v17

    const-string v2, "2F"

    const/16 v17, 0x97

    aput-object v2, v1, v17

    const-string v2, "31"

    const/16 v17, 0x98

    aput-object v2, v1, v17

    const-string v2, "33"

    const/16 v17, 0x99

    aput-object v2, v1, v17

    const-string v2, "35"

    const/16 v17, 0x9a

    aput-object v2, v1, v17

    const-string v2, "37"

    const/16 v17, 0x9b

    aput-object v2, v1, v17

    const-string v2, "39"

    const/16 v17, 0x9c

    aput-object v2, v1, v17

    const-string v2, "3B"

    const/16 v17, 0x9d

    aput-object v2, v1, v17

    const-string v2, "3D"

    const/16 v17, 0x9e

    aput-object v2, v1, v17

    const-string v2, "3F"

    const/16 v17, 0x9f

    aput-object v2, v1, v17

    const-string v2, "41"

    const/16 v17, 0xa0

    aput-object v2, v1, v17

    const-string v2, "43"

    const/16 v17, 0xa1

    aput-object v2, v1, v17

    const-string v2, "45"

    const/16 v17, 0xa2

    aput-object v2, v1, v17

    const-string v2, "47"

    const/16 v17, 0xa3

    aput-object v2, v1, v17

    const-string v2, "49"

    const/16 v17, 0xa4

    aput-object v2, v1, v17

    const-string v2, "4B"

    const/16 v17, 0xa5

    aput-object v2, v1, v17

    const-string v2, "4D"

    const/16 v17, 0xa6

    aput-object v2, v1, v17

    const-string v2, "4F"

    const/16 v17, 0xa7

    aput-object v2, v1, v17

    const-string v2, "51"

    const/16 v17, 0xa8

    aput-object v2, v1, v17

    const-string v2, "53"

    const/16 v17, 0xa9

    aput-object v2, v1, v17

    const-string v2, "55"

    const/16 v17, 0xaa

    aput-object v2, v1, v17

    const-string v2, "57"

    const/16 v17, 0xab

    aput-object v2, v1, v17

    const-string v2, "59"

    const/16 v17, 0xac

    aput-object v2, v1, v17

    const-string v2, "5B"

    const/16 v17, 0xad

    aput-object v2, v1, v17

    const-string v2, "5D"

    const/16 v17, 0xae

    aput-object v2, v1, v17

    const-string v2, "5F"

    const/16 v17, 0xaf

    aput-object v2, v1, v17

    const-string v2, "61"

    const/16 v17, 0xb0

    aput-object v2, v1, v17

    const-string v2, "63"

    const/16 v17, 0xb1

    aput-object v2, v1, v17

    const-string v2, "65"

    const/16 v17, 0xb2

    aput-object v2, v1, v17

    const-string v2, "67"

    const/16 v17, 0xb3

    aput-object v2, v1, v17

    const-string v2, "69"

    const/16 v17, 0xb4

    aput-object v2, v1, v17

    const-string v2, "6B"

    const/16 v17, 0xb5

    aput-object v2, v1, v17

    const-string v2, "6D"

    const/16 v17, 0xb6

    aput-object v2, v1, v17

    const-string v2, "6F"

    const/16 v17, 0xb7

    aput-object v2, v1, v17

    const-string v2, "71"

    const/16 v17, 0xb8

    aput-object v2, v1, v17

    const-string v2, "73"

    const/16 v17, 0xb9

    aput-object v2, v1, v17

    const-string v2, "75"

    const/16 v17, 0xba

    aput-object v2, v1, v17

    const-string v2, "77"

    const/16 v17, 0xbb

    aput-object v2, v1, v17

    const-string v2, "79"

    const/16 v17, 0xbc

    aput-object v2, v1, v17

    const-string v2, "7B"

    const/16 v17, 0xbd

    aput-object v2, v1, v17

    const-string v2, "7D"

    const/16 v17, 0xbe

    aput-object v2, v1, v17

    const-string v2, "7F"

    const/16 v17, 0xbf

    aput-object v2, v1, v17

    const-string v2, "81"

    const/16 v17, 0xc0

    aput-object v2, v1, v17

    const-string v2, "83"

    const/16 v17, 0xc1

    aput-object v2, v1, v17

    const-string v2, "85"

    const/16 v17, 0xc2

    aput-object v2, v1, v17

    const-string v2, "87"

    const/16 v17, 0xc3

    aput-object v2, v1, v17

    const-string v2, "89"

    const/16 v17, 0xc4

    aput-object v2, v1, v17

    const-string v2, "8B"

    const/16 v17, 0xc5

    aput-object v2, v1, v17

    const-string v2, "8D"

    const/16 v17, 0xc6

    aput-object v2, v1, v17

    const-string v2, "8F"

    const/16 v17, 0xc7

    aput-object v2, v1, v17

    const-string v2, "91"

    const/16 v17, 0xc8

    aput-object v2, v1, v17

    const-string v2, "93"

    const/16 v17, 0xc9

    aput-object v2, v1, v17

    const-string v2, "95"

    const/16 v17, 0xca

    aput-object v2, v1, v17

    const-string v2, "97"

    const/16 v17, 0xcb

    aput-object v2, v1, v17

    const-string v2, "99"

    const/16 v17, 0xcc

    aput-object v2, v1, v17

    const-string v2, "9B"

    const/16 v17, 0xcd

    aput-object v2, v1, v17

    const-string v2, "9D"

    const/16 v17, 0xce

    aput-object v2, v1, v17

    const-string v2, "9F"

    const/16 v17, 0xcf

    aput-object v2, v1, v17

    const-string v2, "A1"

    const/16 v17, 0xd0

    aput-object v2, v1, v17

    const-string v2, "A3"

    const/16 v17, 0xd1

    aput-object v2, v1, v17

    const-string v2, "A5"

    const/16 v17, 0xd2

    aput-object v2, v1, v17

    const-string v2, "A7"

    const/16 v17, 0xd3

    aput-object v2, v1, v17

    const-string v2, "A9"

    const/16 v17, 0xd4

    aput-object v2, v1, v17

    const-string v2, "AB"

    const/16 v17, 0xd5

    aput-object v2, v1, v17

    const-string v2, "AD"

    const/16 v17, 0xd6

    aput-object v2, v1, v17

    const-string v2, "AF"

    const/16 v17, 0xd7

    aput-object v2, v1, v17

    const-string v2, "B1"

    const/16 v17, 0xd8

    aput-object v2, v1, v17

    const-string v2, "B3"

    const/16 v17, 0xd9

    aput-object v2, v1, v17

    const-string v2, "B5"

    const/16 v17, 0xda

    aput-object v2, v1, v17

    const-string v2, "B7"

    const/16 v17, 0xdb

    aput-object v2, v1, v17

    const-string v2, "B9"

    const/16 v17, 0xdc

    aput-object v2, v1, v17

    const-string v2, "BB"

    const/16 v17, 0xdd

    aput-object v2, v1, v17

    const-string v2, "BD"

    const/16 v17, 0xde

    aput-object v2, v1, v17

    const-string v2, "BF"

    const/16 v17, 0xdf

    aput-object v2, v1, v17

    const-string v2, "C1"

    const/16 v17, 0xe0

    aput-object v2, v1, v17

    const-string v2, "C3"

    const/16 v17, 0xe1

    aput-object v2, v1, v17

    const-string v2, "C5"

    const/16 v17, 0xe2

    aput-object v2, v1, v17

    const-string v2, "C7"

    const/16 v17, 0xe3

    aput-object v2, v1, v17

    const-string v2, "C9"

    const/16 v17, 0xe4

    aput-object v2, v1, v17

    const-string v2, "CB"

    const/16 v17, 0xe5

    aput-object v2, v1, v17

    const-string v2, "CD"

    const/16 v17, 0xe6

    aput-object v2, v1, v17

    const-string v2, "CF"

    const/16 v17, 0xe7

    aput-object v2, v1, v17

    const-string v2, "D1"

    const/16 v17, 0xe8

    aput-object v2, v1, v17

    const-string v2, "D3"

    const/16 v17, 0xe9

    aput-object v2, v1, v17

    const-string v2, "D5"

    const/16 v17, 0xea

    aput-object v2, v1, v17

    const-string v2, "D7"

    const/16 v17, 0xeb

    aput-object v2, v1, v17

    const-string v2, "D9"

    const/16 v17, 0xec

    aput-object v2, v1, v17

    const-string v2, "DB"

    const/16 v17, 0xed

    aput-object v2, v1, v17

    const-string v2, "DD"

    const/16 v17, 0xee

    aput-object v2, v1, v17

    const-string v2, "DF"

    const/16 v17, 0xef

    aput-object v2, v1, v17

    const-string v2, "E1"

    const/16 v17, 0xf0

    aput-object v2, v1, v17

    const-string v2, "E3"

    const/16 v17, 0xf1

    aput-object v2, v1, v17

    const-string v2, "E5"

    const/16 v17, 0xf2

    aput-object v2, v1, v17

    const-string v2, "E7"

    const/16 v17, 0xf3

    aput-object v2, v1, v17

    const-string v2, "E9"

    const/16 v17, 0xf4

    aput-object v2, v1, v17

    const-string v2, "EB"

    const/16 v17, 0xf5

    aput-object v2, v1, v17

    const-string v2, "ED"

    const/16 v17, 0xf6

    aput-object v2, v1, v17

    const-string v2, "EF"

    const/16 v17, 0xf7

    aput-object v2, v1, v17

    const-string v2, "F1"

    const/16 v17, 0xf8

    aput-object v2, v1, v17

    const-string v2, "F3"

    const/16 v17, 0xf9

    aput-object v2, v1, v17

    const-string v2, "F5"

    const/16 v17, 0xfa

    aput-object v2, v1, v17

    const-string v2, "F7"

    const/16 v17, 0xfb

    aput-object v2, v1, v17

    const-string v2, "F9"

    const/16 v17, 0xfc

    aput-object v2, v1, v17

    const-string v2, "FB"

    const/16 v17, 0xfd

    aput-object v2, v1, v17

    const-string v2, "FD"

    const/16 v17, 0xfe

    aput-object v2, v1, v17

    const-string v2, "FF"

    const/16 v17, 0xff

    aput-object v2, v1, v17

    sput-object v1, Lcom/android/settingslib/bluetooth/Utils;->BD_ROTATE_LEFT:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v3

    const-string v1, "80"

    aput-object v1, v0, v4

    const-string v1, "01"

    aput-object v1, v0, v5

    const-string v1, "81"

    aput-object v1, v0, v6

    const-string v1, "02"

    aput-object v1, v0, v7

    const-string v1, "82"

    aput-object v1, v0, v8

    const-string v1, "03"

    aput-object v1, v0, v9

    const-string v1, "83"

    aput-object v1, v0, v10

    const-string v1, "04"

    aput-object v1, v0, v11

    const-string v1, "84"

    aput-object v1, v0, v12

    const-string v1, "05"

    aput-object v1, v0, v13

    const-string v1, "85"

    aput-object v1, v0, v14

    const-string v1, "06"

    aput-object v1, v0, v15

    const-string v1, "86"

    aput-object v1, v0, v16

    const-string v1, "07"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "87"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "08"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "88"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "09"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "89"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "0A"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "8A"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "0B"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "8B"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "0C"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "8C"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "0D"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "8D"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "0E"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "8E"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "0F"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "8F"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "10"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "90"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "11"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "91"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "12"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "92"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "13"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "93"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "14"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "94"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "15"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "95"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "16"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "96"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "17"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "97"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "18"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "98"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "19"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "99"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "1A"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "9A"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "1B"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "9B"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "1C"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "9C"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "1D"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "9D"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "1E"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "9E"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "1F"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "9F"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "20"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "A0"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "21"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "A1"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "22"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "A2"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "23"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "A3"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "24"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "A4"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "25"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "A5"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "26"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "A6"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "27"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "A7"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "28"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "A8"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "29"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "A9"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "2A"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "AA"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "2B"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "AB"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "2C"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "AC"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "2D"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "AD"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "2E"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "AE"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "2F"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "AF"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "30"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "B0"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "31"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "B1"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "32"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "B2"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "33"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "B3"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "34"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "B4"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "35"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "B5"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "36"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "B6"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "37"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "B7"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "38"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "B8"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "39"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "B9"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "3A"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "BA"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "3B"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "BB"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "3C"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "BC"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "3D"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "BD"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "3E"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "BE"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "3F"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "BF"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "40"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "C0"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "41"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "C1"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "42"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "C2"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "43"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "C3"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "44"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "C4"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "45"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "C5"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "46"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "C6"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "47"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "C7"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "48"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "C8"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "49"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "C9"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "4A"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "CA"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "4B"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "CB"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "4C"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "CC"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "4D"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "CD"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string v1, "4E"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string v1, "CE"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string v1, "4F"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string v1, "CF"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string v1, "50"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string v1, "D0"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const-string v1, "51"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string v1, "D1"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string v1, "52"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string v1, "D2"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string v1, "53"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string v1, "D3"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string v1, "54"

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string v1, "D4"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string v1, "55"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string v1, "D5"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const-string v1, "56"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string v1, "D6"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string v1, "57"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string v1, "D7"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string v1, "58"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string v1, "D8"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string v1, "59"

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string v1, "D9"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string v1, "5A"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const-string v1, "DA"

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string v1, "5B"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string v1, "DB"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string v1, "5C"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string v1, "DC"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string v1, "5D"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string v1, "DD"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string v1, "5E"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string v1, "DE"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string v1, "5F"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const-string v1, "DF"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string v1, "60"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string v1, "E0"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string v1, "61"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string v1, "E1"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string v1, "62"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string v1, "E2"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string v1, "63"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string v1, "E3"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string v1, "64"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const-string v1, "E4"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string v1, "65"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string v1, "E5"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string v1, "66"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string v1, "E6"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "67"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "E7"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string v1, "68"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string v1, "E8"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    const-string v1, "69"

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const-string v1, "E9"

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const-string v1, "6A"

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const-string v1, "EA"

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const-string v1, "6B"

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const-string v1, "EB"

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const-string v1, "6C"

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const-string v1, "EC"

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const-string v1, "6D"

    const/16 v2, 0xda

    aput-object v1, v0, v2

    const-string v1, "ED"

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const-string v1, "6E"

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const-string v1, "EE"

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const-string v1, "6F"

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const-string v1, "EF"

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const-string v1, "70"

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const-string v1, "F0"

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const-string v1, "71"

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const-string v1, "F1"

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    const-string v1, "72"

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    const-string v1, "F2"

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    const-string v1, "73"

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    const-string v1, "F3"

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    const-string v1, "74"

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    const-string v1, "F4"

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    const-string v1, "75"

    const/16 v2, 0xea

    aput-object v1, v0, v2

    const-string v1, "F5"

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    const-string v1, "76"

    const/16 v2, 0xec

    aput-object v1, v0, v2

    const-string v1, "F6"

    const/16 v2, 0xed

    aput-object v1, v0, v2

    const-string v1, "77"

    const/16 v2, 0xee

    aput-object v1, v0, v2

    const-string v1, "F7"

    const/16 v2, 0xef

    aput-object v1, v0, v2

    const-string v1, "78"

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    const-string v1, "F8"

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    const-string v1, "79"

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    const-string v1, "F9"

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    const-string v1, "7A"

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    const-string v1, "FA"

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    const-string v1, "7B"

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    const-string v1, "FB"

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    const-string v1, "7C"

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    const-string v1, "FC"

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    const-string v1, "7D"

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    const-string v1, "FD"

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    const-string v1, "7E"

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    const-string v1, "FE"

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    const-string v1, "7F"

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    const-string v1, "FF"

    const/16 v2, 0xff

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/Utils;->BD_ROTATE_RIGHT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToInt(B)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 7

    const-string v0, "0123456789abcdef"

    if-nez p0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    array-length v3, p0

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, p0, v3

    const-string v5, "0123456789abcdef"

    and-int/lit16 v6, v4, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "0123456789abcdef"

    and-int/lit8 v6, v4, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static compareSameWithGear(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0, p1, p2}, Lcom/android/settingslib/bluetooth/Utils;->compareSameWithGear(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static compareSameWithGear(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%02X"

    new-array v9, v4, [Ljava/lang/Object;

    aget-byte v10, v0, v5

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    return v5

    :cond_0
    move-object v6, v2

    move v2, v1

    move v1, v4

    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_5

    aget-byte v7, v0, v1

    invoke-static {v7}, Lcom/android/settingslib/bluetooth/Utils;->byteToInt(B)I

    move-result v2

    mul-int/lit8 v7, v1, 0x3

    mul-int/lit8 v8, v1, 0x3

    add-int/2addr v8, v3

    invoke-virtual {p3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/settingslib/bluetooth/Utils;->BD_ROTATE_RIGHT:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ne p0, v4, :cond_6

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02X"

    new-array v8, v4, [Ljava/lang/Object;

    aget-byte v9, v0, v5

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    return v5

    :cond_3
    move-object v6, v2

    move v2, v1

    move v1, v4

    :goto_1
    array-length v7, v0

    if-ge v1, v7, :cond_5

    aget-byte v7, v0, v1

    invoke-static {v7}, Lcom/android/settingslib/bluetooth/Utils;->byteToInt(B)I

    move-result v2

    mul-int/lit8 v7, v1, 0x3

    mul-int/lit8 v8, v1, 0x3

    add-int/2addr v8, v3

    invoke-virtual {p3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/settingslib/bluetooth/Utils;->BD_ROTATE_LEFT:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    return v5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return v4

    :cond_6
    return v5
.end method

.method public static cropIcon(Landroid/content/Context;ILandroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settingslib/R$color;->bt_device_icon_background_tint_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v7, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    int-to-float v9, v3

    div-float/2addr v9, v8

    int-to-float v10, v3

    div-float/2addr v10, v8

    invoke-virtual {v4, v7, v9, v10, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v7, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v2, v7

    invoke-static {v2, v3, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v2, v6

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v6, v1, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v2, :cond_3

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v4

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    throw v4
.end method

.method public static cutNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "[^\\d]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getBleSpenAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "spengestureservice"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getBleSpenAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getBytesFromAddress(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x6

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_disconnecting:I

    return v0

    :pswitch_1
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    return v0

    :pswitch_2
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_connecting:I

    return v0

    :pswitch_3
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_disconnected:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getContactImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v4, "photo_uri"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v0, v4

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "photo_uri"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    move-object v2, v7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    sget v10, Lcom/android/settingslib/R$dimen;->list_app_icon_size:I

    invoke-static {p0, v10, v9}, Lcom/android/settingslib/bluetooth/Utils;->cropIcon(Landroid/content/Context;ILandroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v10

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :cond_5
    :goto_2
    return-object v1

    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_7

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_4
    throw v1
.end method

.method public static getDataCheckString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "00000000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0000"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Ljava/util/zip/Checksum;->update([BII)V

    sget-object v1, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v1

    sget-object v3, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v3}, Ljava/util/zip/Checksum;->reset()V

    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/Utils;->longToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getParsePhoneNumber(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    nop

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getContactHash()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->byteToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getContactCrc()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/Utils;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/bluetooth/Utils;->retrieveDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQuickPannelOn()Z
    .locals 1

    sget-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->mQuickPannelOn:Z

    return v0
.end method

.method public static getRestoredDevices(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Z)Ljava/util/List;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v8, "bond_state== 1"

    const-string v9, "address"

    const-string v10, "name"

    const-string v11, "cod"

    const-string v12, "bond_state"

    const-string v13, "appearance"

    const-string v14, "manufacturerdata"

    const-string/jumbo v7, "timestamp"

    const-string v6, "linktype"

    const-string/jumbo v5, "uuids"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    const-string v0, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const/4 v0, 0x0

    move-object/from16 v16, v0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move/from16 v19, v1

    :try_start_1
    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move-object v1, v3

    move-object v3, v15

    move-object/from16 v20, v4

    move-object/from16 v4, v17

    move-object/from16 v21, v5

    move-object v5, v8

    move-object/from16 v22, v6

    move-object/from16 v6, v18

    move-object/from16 v23, v8

    move-object v8, v7

    move-object v7, v0

    :try_start_2
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-object v2, v0

    if-nez v2, :cond_1

    :try_start_3
    const-string v0, "Settingslib_BluetoothUtils"

    const-string v3, "getRestoredDevices() :: query return null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v2, :cond_0

    const-string v0, "Settingslib_BluetoothUtils"

    const-string v3, "getRestoredDevices :: will be cursor close"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v29, v21

    move-object/from16 v27, v22

    move-object/from16 v10, p0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v29, v21

    move-object/from16 v27, v22

    move-object/from16 v10, p0

    goto/16 :goto_5

    :cond_1
    :try_start_4
    const-string v0, "Settingslib_BluetoothUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRestoredDevices() :: cursor count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Columns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    move/from16 v24, v16

    move-object/from16 v25, v8

    move-object/from16 v8, v22

    :try_start_5
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move/from16 v26, v16

    move-object/from16 v27, v8

    move-object/from16 v8, v21

    :try_start_6
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    :goto_0
    move/from16 v28, v16

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v16
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-nez v16, :cond_4

    const/16 v16, 0x0

    move-object/from16 v29, v8

    :try_start_7
    new-instance v8, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v30, v9

    :try_start_8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v37, v10

    move-object/from16 v10, p0

    :try_start_9
    invoke-direct {v8, v10, v9}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setName(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setCod(I)V

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setBondState(I)V

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setAppearance(I)V

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settingslib/bluetooth/Utils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setManufacturerData([B)V

    move/from16 v38, v0

    move/from16 v39, v3

    move/from16 v40, v4

    move/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setTimeStamp(J)V

    move/from16 v3, v26

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setLinkType(I)V

    move/from16 v4, v28

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v41, v17

    move/from16 v42, v0

    move-object/from16 v0, v41

    invoke-static {v9, v0}, Lcom/android/settingslib/bluetooth/Utils;->isSyncDevice([BLjava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v16, 0x1

    :cond_2
    invoke-virtual {v8, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setUuids(Ljava/lang/String;)V

    new-instance v17, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object/from16 v31, v17

    move-object/from16 v32, v10

    move-object/from16 v33, p1

    move-object/from16 v34, p2

    move-object/from16 v35, v8

    move/from16 v36, v16

    invoke-direct/range {v31 .. v36}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;Z)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v43, v17

    if-eqz p3, :cond_3

    if-eqz v16, :cond_3

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    :try_start_a
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move/from16 v45, v3

    move-object/from16 v3, v20

    goto :goto_1

    :catchall_1
    move-exception v0

    move/from16 v19, v16

    move-object/from16 v3, v20

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move/from16 v19, v16

    move-object/from16 v3, v20

    goto/16 :goto_5

    :cond_3
    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move/from16 v45, v3

    move-object/from16 v3, v20

    :try_start_b
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    nop

    move-object/from16 v20, v3

    move/from16 v19, v16

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v10, v37

    move/from16 v0, v38

    move/from16 v3, v39

    move/from16 v24, v42

    move/from16 v26, v45

    move/from16 v16, v4

    move/from16 v4, v40

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move/from16 v19, v16

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move/from16 v19, v16

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v3, v20

    move/from16 v19, v16

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v3, v20

    move/from16 v19, v16

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v10, p0

    move/from16 v19, v16

    goto/16 :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v10, p0

    move/from16 v19, v16

    goto/16 :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v10, p0

    move/from16 v19, v16

    goto/16 :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v10, p0

    move/from16 v19, v16

    goto/16 :goto_5

    :cond_4
    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v10, p0

    if-eqz v2, :cond_5

    :goto_2
    const-string v0, "Settingslib_BluetoothUtils"

    const-string v4, "getRestoredDevices :: will be cursor close"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    :catchall_6
    move-exception v0

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v10, p0

    goto/16 :goto_7

    :catch_6
    move-exception v0

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v10, p0

    goto/16 :goto_5

    :catchall_7
    move-exception v0

    move-object/from16 v27, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v29, v21

    move-object/from16 v10, p0

    goto/16 :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v27, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v29, v21

    move-object/from16 v10, p0

    goto/16 :goto_5

    :catchall_8
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v29, v21

    move-object/from16 v27, v22

    move-object/from16 v10, p0

    goto :goto_3

    :catch_8
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v29, v21

    move-object/from16 v27, v22

    move-object/from16 v10, p0

    goto :goto_4

    :catchall_9
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v29, v21

    move-object/from16 v27, v22

    move-object/from16 v10, p0

    move-object/from16 v2, v16

    :goto_3
    goto/16 :goto_7

    :catch_9
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v3, v20

    move-object/from16 v29, v21

    move-object/from16 v27, v22

    move-object/from16 v10, p0

    move-object/from16 v2, v16

    :goto_4
    goto/16 :goto_5

    :catchall_a
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    move-object/from16 v29, v5

    move-object/from16 v27, v6

    move-object/from16 v25, v7

    move-object/from16 v23, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v10, p0

    move-object/from16 v2, v16

    goto/16 :goto_7

    :catch_a
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    move-object/from16 v29, v5

    move-object/from16 v27, v6

    move-object/from16 v25, v7

    move-object/from16 v23, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v10, p0

    move-object/from16 v2, v16

    goto :goto_5

    :catchall_b
    move-exception v0

    move/from16 v19, v1

    move-object v1, v3

    move-object v3, v4

    move-object/from16 v29, v5

    move-object/from16 v27, v6

    move-object/from16 v25, v7

    move-object/from16 v23, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v10, p0

    move-object/from16 v2, v16

    goto :goto_7

    :catch_b
    move-exception v0

    move/from16 v19, v1

    move-object v1, v3

    move-object v3, v4

    move-object/from16 v29, v5

    move-object/from16 v27, v6

    move-object/from16 v25, v7

    move-object/from16 v23, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v10, p0

    move-object/from16 v2, v16

    :goto_5
    :try_start_c
    const-string v4, "Settingslib_BluetoothUtils"

    const-string v5, "getRestoredDevices :: Occurs IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    if-eqz v2, :cond_5

    goto/16 :goto_2

    :cond_5
    :goto_6
    if-eqz p3, :cond_7

    sget-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "Settingslib_BluetoothUtils"

    const-string v4, "getRestoredDevices :: syncedDevices"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v1

    :cond_7
    sget-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "Settingslib_BluetoothUtils"

    const-string v4, "getRestoredDevices :: restoredDevices"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v3

    :catchall_c
    move-exception v0

    :goto_7
    if-eqz v2, :cond_9

    const-string v4, "Settingslib_BluetoothUtils"

    const-string v5, "getRestoredDevices :: will be cursor close"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public static getStringToken(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isBlackListDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v2, "(?i).*BMW.*"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "(?i).*A0:56:B2.*|(?i).*B8:24:10.*|(?i).*9C:DF:03.*|(?i).*00:19:C0.*"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "(?i)MINI[0-9].*"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public static isEnabledUltraPowerSaving(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public static isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "Settingslib_BluetoothUtils"

    const-string v4, "isPackageExists :: appInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    const-string v2, "Settingslib_BluetoothUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPackageExists :: target package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", find = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSyncDevice([BLjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    new-instance v2, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {v2, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object v3

    aget-byte v4, v3, v1

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aget-byte v6, v3, v0

    if-ne v6, v1, :cond_1

    if-lt v4, v1, :cond_1

    if-gt v4, v5, :cond_1

    sget-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Settingslib_BluetoothUtils"

    const-string v5, "isSyncDevice :: DeviceId"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, ","

    invoke-static {p1, v2}, Lcom/android/settingslib/bluetooth/Utils;->getStringToken(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    const-string v6, "e7ab2241-ca64-4a69-ac02-05f5c6fe2d62"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Settingslib_BluetoothUtils"

    const-string v3, "isSyncDevice :: UUID"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    sget-boolean v1, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "Settingslib_BluetoothUtils"

    const-string v2, "isSyncDevice :: It is not synced device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method

.method public static isTablet()Z
    .locals 2

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static longToString(J)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x7

    :goto_0
    if-ltz v1, :cond_0

    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x8

    mul-int/2addr v5, v1

    ushr-long v5, p0, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static makeParcelUuids([Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static retrieveContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v3, "display_name"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static retrieveDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "Settingslib_BluetoothUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " hash retrieveDB :: hash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/settingslib/bluetooth/Utils;->CONTACT_NUMBER:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data12 LIKE \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_2

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data1"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/Utils;->cutNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/Utils;->getDataCheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Settingslib_BluetoothUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " hash retrieveDB :: CHECK  : true  -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", find contact name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_1

    :cond_0
    const-string v4, "Settingslib_BluetoothUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " hash retrieveDB :: CHECK  : false  -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "!="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_1
    const-string v2, "Settingslib_BluetoothUtils"

    const-string v3, " hash retrieveDB :: end to cursor moveToNext"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_2
    const-string v2, "Settingslib_BluetoothUtils"

    const-string v3, " hash retrieveDB :: CHECK :false - cursor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz v0, :cond_3

    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_4
    return-object v1

    :goto_5
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public static sendSaLoggingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/bluetooth/Utils;->sendSaLoggingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static sendSaLoggingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.bluetooth.salogging.intent.action.BLUETOOTH_SA_LOGGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "screenId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "eventId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "detail"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setErrorListener(Lcom/android/settingslib/bluetooth/Utils$ErrorListener;)V
    .locals 0

    sput-object p0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    return-void
.end method

.method public static setQuickPannelOn(Z)V
    .locals 3

    const-string v0, "Settingslib_BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setQuickPannelOn :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/android/settingslib/bluetooth/Utils;->mQuickPannelOn:Z

    return-void
.end method

.method static showConnectingError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u200e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u200e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_connecting_error_message:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030223

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static stringToByte(Ljava/lang/String;)[B
    .locals 5

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    mul-int v3, v1, v2

    mul-int v4, v1, v2

    add-int/2addr v4, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static updateDeviceName(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    const-string v2, "Settingslib_BluetoothUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDeviceName :: change device name to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
